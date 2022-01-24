# syntax=docker/dockerfile:1

FROM node:latest

ENV NODE_ENV=production

WORKDIR /app

COPY ["node-app/package.json", "node-app/package-lock.json", "./"]

RUN npm install --production

COPY ["node-app/", "."]

CMD ["node", "index.js"]

