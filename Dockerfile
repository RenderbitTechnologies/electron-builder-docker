# use latest Node LTS (Carbon)
FROM node:carbon-alpine

LABEL maintainer="soham@renderbit.com"
LABEL version="1.0"
LABEL description="Electron app builder base image"

RUN apk --no-cache add wine p7zip ca-certificates && \
    rm -rf /var/cache/apk/*

RUN curl -L https://github.com/electron-userland/electron-builder-binaries/releases/download/wine-2.0.3-mac-10.13/wine-home.zip > /tmp/wine-home.zip && \
    unzip /tmp/wine-home.zip -d /root/.wine && \
    unlink /tmp/wine-home.zip

ENV WINEDEBUG -all,err+all
ENV WINEDLLOVERRIDES winemenubuilder.exe=d
