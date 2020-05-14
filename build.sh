#!/usr/bin/env bash

RUN_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
. $RUN_DIR/.env

# terraform releases https://releases.hashicorp.com/terraform/


DOCKER_IMAGE=tinslice/terraform

DOCKER_IMAGE_TAG=$TERRAFORM_VERSION
echo "== build base docker image $DOCKER_IMAGE:$DOCKER_IMAGE_TAG =="
docker build --pull -f $RUN_DIR/base/Dockerfile \
       --build-arg ALPINE_VERSION=$ALPINE_VERSION --build-arg TERRAFORM_VERSION=$TERRAFORM_VERSION \
       -t $DOCKER_IMAGE:$DOCKER_IMAGE_TAG $RUN_DIR/base
docker push $DOCKER_IMAGE:$DOCKER_IMAGE_TAG

DOCKER_IMAGE_TAG=$TERRAFORM_VERSION-awscli
echo "== build awscli docker image $DOCKER_IMAGE:$DOCKER_IMAGE_TAG =="
docker build -f $RUN_DIR/aws/Dockerfile \
       --build-arg TERRAFORM_VERSION=$TERRAFORM_VERSION \
       -t $DOCKER_IMAGE:$DOCKER_IMAGE_TAG $RUN_DIR/aws
docker push $DOCKER_IMAGE:$DOCKER_IMAGE_TAG