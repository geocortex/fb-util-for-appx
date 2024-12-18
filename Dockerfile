FROM alpine:latest

WORKDIR /usr/fb-appx

RUN apk update && apk add --no-cache \
    make \
    fts \
    fts-dev \
    musl-fts \
    musl-fts-dev \
    build-base \
    gcompat \
    openssl-dev \
    alpine-sdk \
    cmake \
    zlib-dev \
    libstdc++-dev

COPY . .

WORKDIR /usr/fb-appx
RUN mkdir Build && cd Build && cmake .. && make