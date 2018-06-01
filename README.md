# docker-portable-envtpl-buildimage

## Status (master branch)

[![Travis](https://img.shields.io/travis/metwork-framework/docker-portable-envtpl-buildimage.svg)](https://travis-ci.org/metwork-framework/docker-portable-envtpl-buildimage)
[![Docker Pulls](https://img.shields.io/docker/pulls/metwork/portable-envtpl-buildimage.svg)](https://hub.docker.com/r/metwork/portable-envtpl-buildimage/)
[![DockerHub](https://img.shields.io/badge/docker%20hub-link-green.svg)](https://hub.docker.com/r/metwork/portable-envtpl-buildimage/)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)]()
[![Maturity](https://img.shields.io/badge/maturity-beta-blue.svg)]()
[![Maintenance](https://img.shields.io/maintenance/yes/2018.svg)]()

## What is it ?

A docker image to build a kind of static and portable [envtpl](https://github.com/metwork-framework/envtpl) "binary" made with pyinstaller.

## Usage

```bash
docker run --rm metwork/portable-envtpl-buildimage >portable_envtpl.tar.gz
zcat portable_envtpl.tar.gz |tar xvf -
cd portable_envtpl
./envtpl --help
```

## Usage with an alternate envtpl source

```bash
docker run --rm -e ENVTPL_SOURCE=git+https://github.com/andreasjansson/envtpl metwork/portable-envtpl-buildimage >alternate_portable_envtpl.tar.gz
```

## Build

```bash
make
```
