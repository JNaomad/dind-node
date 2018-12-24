FROM docker:latest
MAINTAINER Kevin Michaut <kevin.michaut44@gmail.com>

# Define commonly used variables
ENV DOCKER_VERSION 18.09
ENV COMPOSE_VERSION 1.23.2
ENV NODE_VERSION 8.14.0

# Install Java.
RUN \
  apk add --no-cache --update \
      curl \
      py-pip \
      nodejs \
      npm && \
  pip install --upgrade pip && \
  pip install docker-compose==1.23.2 && \
  rm -rf ~/.cache && \
  apk del py-pip && \
  rm -rf /var/cache/apk/*