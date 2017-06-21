# docker-portable-envtpl-buildimage

## What is it ?

A docker image to build a static envtpl "binary" made with pyinstaller

## Usage

	docker run --rm thefab/portable-envtpl-buildimage >portable_envtpl.tar.gz
        zcat portable_envtpl.tar.gz |tar xvf -
        cd portable_envtpl
        ./envtpl --help

## Build

	make
