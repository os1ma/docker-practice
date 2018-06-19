#!/bin/bash -eu

IMAGE_NAME=my-web
WORKING_DIR=/opt/my-web

cd `dirname $0`

docker run \
    --rm \
    -v `pwd`:$WORKING_DIR \
    -w $WORKING_DIR \
    node:9.3.0-alpine \
    sh -c 'npm i --no-bin-links && npm run build'

docker build -t $IMAGE_NAME .
