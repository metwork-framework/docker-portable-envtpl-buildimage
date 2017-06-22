# docker-portable-envtpl-buildimage

[![Travis](https://img.shields.io/travis/thefab/docker-portable-envtpl-buildimage.svg)](https://travis-ci.org/thefab/docker-portable-envtpl-buildimage)
[![Docker Pulls](https://img.shields.io/docker/pulls/thefab/portable-envtpl-buildimage.svg)](https://hub.docker.com/r/thefab/portable-envtpl-buildimage/)
[![DockerHub](https://img.shields.io/badge/docker%20hub-link-green.svg)](https://hub.docker.com/r/thefab/portable-envtpl-buildimage/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Maturity](https://img.shields.io/badge/maturity-alpha-red.svg)]()
[![Maintenance](https://img.shields.io/maintenance/yes/2017.svg)]()

## What is it ?

A docker image to build a static envtpl "binary" made with pyinstaller

## Usage

	docker run --rm thefab/portable-envtpl-buildimage >portable_envtpl.tar.gz
        zcat portable_envtpl.tar.gz |tar xvf -
        cd portable_envtpl
        ./envtpl --help


## Usage with an alternate envtpl source

	docker run --rm -e ENVTPL_SOURCE=git+https://github.com/thefab/envtpl.git thefab/portable-envtpl-buildimage >portable_envtpl.tar.gz

## Build

	make
