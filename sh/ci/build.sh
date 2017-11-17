#!/bin/bash


# recommended by travis-ci
# @see https://docs.travis-ci.com/user/customizing-the-build/#Implementing-Complex-Build-Steps
set -ev

# @see https://stackoverflow.com/a/246128
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DOCKER_UTIL_PATH=$DIR/../../docker-util

<<<<<<< HEAD
: ${ALPINE_VERSION:=latest}
: ${DOCKER_IMAGE_NAME:=travis-cli}
: ${IMAGE_SIZE_THRESHOLD:=35}

# build the image
docker build --build-arg ALPINE_VERSION=$ALPINE_VERSION --tag $DOCKER_IMAGE_NAME --compress --force-rm --squash .

# test the image size
=======


docker build --build-arg ALPINE_VERSION=$ALPINE_VERSION --tag $DOCKER_IMAGE_NAME --compress --force-rm --squash .
>>>>>>> 72e9ed2dba2769cc5b420d3151c61ee3ed3a82c1
$DOCKER_UTIL_PATH/sh/test-image-size.sh -i $DOCKER_IMAGE_NAME -t $IMAGE_SIZE_THRESHOLD
