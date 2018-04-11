# use latest Node LTS (Carbon)
FROM node:carbon-alpine

LABEL maintainer="soham@renderbit.com"
LABEL version="1.0"
LABEL description="Electron app builder base image"

RUN apk --no-cache add wine && \
    rm -rf /var/cache/apk/*
