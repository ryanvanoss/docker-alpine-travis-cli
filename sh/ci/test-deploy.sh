#!/bin/bash


# recommended by travis-ci
# @see https://docs.travis-ci.com/user/customizing-the-build/#Implementing-Complex-Build-Steps
set -ev

: ${DOCKER_PUBLIC_IMAGE_NAME:=beeglercorpstage/travis-cli}
: ${TAG:=latest}
IMAGE_WITH_TAG=$DOCKER_PUBLIC_IMAGE_NAME:$TAG

<<<<<<< HEAD:sh/ci/test-deploy.sh
# pull an existing image from the Docker registry
=======


>>>>>>> 72e9ed2dba2769cc5b420d3151c61ee3ed3a82c1:sh/ci/test-deploy.sh
docker pull $IMAGE_WITH_TAG

# output the Travis CLI version
docker run --rm $IMAGE_WITH_TAG --version

# run `travis lint` against this repo's .travis.yml file
docker run --mount type=bind,source=$(pwd)/.travis.yml,target=/.travis.yml --rm $IMAGE_WITH_TAG lint /.travis.yml
