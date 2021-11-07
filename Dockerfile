FROM i386/alpine:3.12

RUN apk add --update --no-cache \
    ncurses-dev \
    libevent-dev \
    git \
    curl \
    automake \
    autoconf \
    byacc \
    xz \
    musl-dev \
    linux-headers \
    build-base

WORKDIR /code
