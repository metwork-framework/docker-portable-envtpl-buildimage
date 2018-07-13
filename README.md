# docker-portable-envtpl-buildimage

## Status (master branch)

[![Drone CI](http://51.38.41.227:8000/api/badges/metwork-framework/docker-portable-envtpl-buildimage/status.svg)](http://51.38.41.227:8000/metwork-framework/docker-portable-envtpl-buildimage)
[![DockerHub](https://github.com/metwork-framework/resources/blob/master/badges/dockerhub_link.svg)](https://hub.docker.com/r/metwork/portable-envtpl-buildimage/)
[![License](https://github.com/metwork-framework/resources/blob/master/badges/bsd.svg)]()
[![Maturity](https://github.com/metwork-framework/resources/blob/master/badges/beta.svg)]()
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()

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
