#!/bin/bash

set -x
set -e

export PATH=${PATH}:/opt/rh/python27/root/usr/bin >&2
export LD_LIBRARY_PATH=/opt/rh/python27/root/usr/lib64 >&2
export PYTHONPATH=/opt/rh/python27/root/usr/lib/python2.7/site-packages >&2

pip2.7 install pyinstaller==3.6 >&2
pip2.7 install ${ENVTPL_SOURCE} >&2

cd ${PYTHONPATH} >&2
pyinstaller envtpl.py >&2
cp -Rf ${PYTHONPATH}/dist/envtpl /portable_envtpl >&2

tar -cvf /portable_envtpl.tar /portable_envtpl >&2
gzip -f /portable_envtpl.tar >&2
cat /portable_envtpl.tar.gz
