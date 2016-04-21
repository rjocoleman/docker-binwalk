# Docker Binwalk

[Binwalk](http://binwalk.org/) is a fast, easy to use tool for analyzing and extracting firmware images.

I developed this Docker image to help me run Binwalk on OS X without dealing with all of the of dependencies for optional features manually.

## Features

* binwalk is built from the git master branch.
* Image based on `ubuntu:latest`.
* Dependencies installed via `https://github.com/devttys0/binwalk/blob/master/deps.sh`

## Usage

```shell
$ docker pull rjocoleman/binwalk
$ docker run -it --rm -v "$(PWD):/binwalk" rjocoleman/binwalk [binwalk options] ./firmware.bin

```
