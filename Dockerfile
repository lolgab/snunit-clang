FROM debian:buster-slim

RUN apt-get update && apt-get install -y curl gnupg && \
  curl -sL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
  echo "deb https://packages.nginx.org/unit/debian/ buster unit" > /etc/apt/sources.list.d/unit.list && \
  echo "deb-src https://packages.nginx.org/unit/debian/ buster unit" >> /etc/apt/sources.list.d/unit.list && \
  apt-get update && apt-get install -y clang unit-dev libuv1-dev && \
  apt-get purge -y gnupg
