FROM alpine:latest

MAINTAINER Hantzley Tauckoor <hantzley@gmail.com>

RUN apk add --update \
    bash \
    curl \
    vim \
    nano \
    git \
    python3 \
    python-dev \
    py-pip \
    build-base \
    nodejs \
    perl \
    ruby ruby-bundler \
  && pip3 install --upgrade pip \
  && pip3 install virtualenv flask flask-sijax requests \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /cisco-gve

VOLUME /cisco-gve
WORKDIR /cisco-gve
ADD setup.sh /cisco-gve/

CMD ["bash"]
