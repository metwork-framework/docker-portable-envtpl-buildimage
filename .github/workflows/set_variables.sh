#!/bin/bash





#set -eu
set -x

if test "centos8" = ""; then
    echo "ERROR: OS env is empty"
    exit 1
fi

case "${GITHUB_EVENT_NAME}" in
    repository_dispatch)
        BRANCH=${PAYLOAD_BRANCH}
        if [ -f .build_os ]; then
            OS_VERSION=`cat .build_os`
        else
            OS_VERSION=${PAYLOAD_OS}
        fi;;
    push)
        if [ -f .build_os ]; then
            OS_VERSION=`cat .build_os`
        else
            OS_VERSION=centos8
        fi
        case "${GITHUB_REF}" in
            refs/heads/*)
                BRANCH=${GITHUB_REF#refs/heads/};;
            *)
                BRANCH=null;
        esac;;
esac
if [ -z ${BRANCH} ]; then
  BRANCH=null
fi
TAG_LATEST=""

TAG_BRANCH="metwork/mfext-centos8-buildimage:${BRANCH}"
if test "${BRANCH}" = "master"; then
    TAG_LATEST="metwork/mfext-centos8-buildimage:latest"
fi 


echo "::set-output name=branch::${BRANCH}"
echo "::set-output name=os::${OS_VERSION}"
echo "::set-output name=tag_branch::${TAG_BRANCH}"
echo "::set-output name=tag_latest::${TAG_LATEST}"
