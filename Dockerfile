FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y curl gnupg && \
  curl -sL https://nginx.org/keys/nginx_signing.key | apt-key add - && \
  echo "deb https://packages.nginx.org/unit/debian/ bullseye unit" > /etc/apt/sources.list.d/unit.list && \
  echo "deb-src https://packages.nginx.org/unit/debian/ bullseye unit" >> /etc/apt/sources.list.d/unit.list && \
  apt-get update && apt-get install -y clang unit-dev=1.28.0* libuv1-dev libidn11-dev && \
  apt-get purge -y gnupg
