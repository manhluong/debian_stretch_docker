############################################################
# Dockerfile to build dart-sdk
# https://github.com/dart-lang/sdk
############################################################
FROM debian:stretch
LABEL maintainer="Luong Bui"

RUN apt-get update && \
  apt-get -y install apt-transport-https dirmngr && \
  echo 'deb https://apt.dockerproject.org/repo debian-stretch main' >> /etc/apt/sources.list && \
  apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys F76221572C52609D && \
  apt-get update && \
  apt-get -y install docker-engine

