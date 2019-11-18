ARG DOCKER_VERSION=latest
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=
ARG DOCKER_VERSION

RUN apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make
RUN pip install "docker-compose${COMPOSE_VERSION:+==}${COMPOSE_VERSION}"
RUN pip install awscli --upgrade
RUN pip install yasha

LABEL \
  org.opencontainers.image.authors="Minuddin Ahmed Rana <minuddinrana@gmail.com>" \
  org.opencontainers.image.description="Forked from tmaier/docker-compose | This docker image installs docker-compose, awscli and yasha on top of the docker image." \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.source="https://github.com/rana-ahmed/docker-compose" \
  org.opencontainers.image.title="Docker Compose, awscli and yasha on docker base image" \
  org.opencontainers.image.version="${DOCKER_VERSION} with docker-compose ${COMPOSE_VERSION}"
