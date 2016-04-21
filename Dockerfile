FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /binwalk

RUN apt-get update -y; \
 \
 apt-get install -y \
 wget \
 curl \
 python \
 xvfb \
 git;

RUN git clone https://github.com/devttys0/binwalk.git /binwalk; \
 cd /binwalk; \
 python setup.py install; \
 yes | ./deps.sh;

RUN apt-get clean; \
 rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/binwalk"]
