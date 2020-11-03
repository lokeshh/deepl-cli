# syntax=docker/dockerfile:experimental
FROM ubuntu:latest AS apt-cache

# DOCKER_BUILDKIT=1 docker build -t deepl . 
# docker run -it deepl:latest 

FROM ubuntu:latest AS base
RUN apt update
# && apt upgrade -y
ENV DEBIAN_FRONTEND noninteractive
RUN rm -f /etc/apt/apt.conf.d/docker-clean; \
    echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
RUN echo 'APT::Install-Recommends "false";' > /etc/apt/apt.conf.d/no-install-recommends
RUN apt install -y -qq python3-dev python3-pip \
    libgtk2.0-0 libgtk-3-0 libnotify-dev \
    libgconf-2-4 libnss3 libxss1 \
    libasound2 libxtst6 xauth xvfb libgbm-dev
RUN pip3 install --progress-bar=off --no-use-pep517 deepl-cli
RUN ln -s /usr/bin/python3 /usr/bin/python