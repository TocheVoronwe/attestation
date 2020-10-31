FROM node:10.16-alpine
WORKDIR /usr/src

COPY docker/package*.json ./

RUN npm ci

COPY docker/server.js ./
COPY dist ./www/

CMD ["npm", "start"]
