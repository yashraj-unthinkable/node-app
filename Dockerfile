FROM alpine:latest

RUN apk add --update nodejs npm

RUN addgroup -S node && adduser -S node -G node

USER node

WORKDIR /home/node

COPY --chown=node:node package-lock.json package.json ./

RUN npm i

COPY --chown=node:node . .

EXPOSE 3000

CMD ["npm", "start"]
