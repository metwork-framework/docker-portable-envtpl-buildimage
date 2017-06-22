#!/bin/bash

set -x
set -e

pip2.7 install ${ENVTPL_SOURCE} >&2
cd /usr/lib/python2.7/site-packages >&2
pyinstaller envtpl.py >&2
cp -Rf /usr/lib/python2.7/site-packages/envtpl/dist/envtpl /portable_envtpl >&2
tar -cvf /portable_envtpl.tar /portable_envtpl >&2
gzip -f /portable_envtpl.tar >&2
cat /portable_envtpl.tar.gz
