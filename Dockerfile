FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl gnupg && \
  curl -sL https://unit.nginx.org/keys/nginx-keyring.gpg | apt-key add - && \
  echo "deb https://packages.nginx.org/unit/ubuntu/ noble unit" >> /etc/apt/sources.list.d/unit.list && \
  echo "deb-src https://packages.nginx.org/unit/ubuntu/ noble unit" >> /etc/apt/sources.list.d/unit.list && \
  apt-get update && apt-get install -y clang unit-dev=1.33* libuv1-dev libidn11-dev && \
  apt-get purge -y gnupg
