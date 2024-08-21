FROM node:18.14.2-alpine

WORKDIR /app

COPY ./package*.json /app/

RUN apk update \
    && apk upgrade \
    && apk add git \
    && npm install \
    && npm cache clean --force

COPY ../ .

ENV PATH ./node_modules/.bin/:$PATH