FROM node:13-slim

RUN mkdir /app

WORKDIR /app

ENV PORT 80
ENV HOST 0.0.0.0

RUN npm install
COPY . .

CMD node app.js
