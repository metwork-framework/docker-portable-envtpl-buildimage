#!/bin/bash

#set -eu
set -x

docker pull metwork/portable-envtpl-buildimage:master
HASH_BEFORE=`docker images -q metwork/portable-envtpl-buildimage:master` 
docker build -t metwork/portable-envtpl-buildimage:master -t metwork/portable-envtpl-buildimage:latest .
HASH_AFTER=`docker images -q metwork/portable-envtpl-buildimage:master`
if [ "${HASH_BEFORE}" != "${HASH_AFTER}" ]; then
    docker push metwork/portable-envtpl-buildimage:master
    docker push metwork/portable-envtpl-buildimage:latest
fi
