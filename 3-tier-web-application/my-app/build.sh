#!/bin/bash -eu

IMAGE_NAME=my-app
WORKING_DIR=/opt/my-app

cd `dirname $0`

docker run \
    --rm \
    -v `pwd`:$WORKING_DIR \
    -v $HOME/.m2:/root/.m2 \
    -w $WORKING_DIR \
    java:8-jdk-alpine \
    ./mvnw clean install

docker build -t $IMAGE_NAME .
