FROM mhart/alpine-node:base

RUN mkdir -p /home/nobody/app && touch /home/nobody/.bashrc && chown -R nobody:nobody /home/nobody

ENV HOME /home/nobody
ENV PATH /home/nobody/.yarn/bin:$PATH
WORKDIR /home/nobody/app

RUN apk update \
  && apk add curl bash binutils tar \
  && rm -rf /var/cache/apk/*

USER nobody
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

USER root
RUN apk del curl tar binutils

USER nobody
