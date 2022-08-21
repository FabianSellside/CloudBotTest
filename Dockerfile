FROM node:13-slim

RUN mkdir /app

WORKDIR /app

ENV PORT 8080
ENV HOST 0.0.0.0

ADD . /app

CMD node app.js
