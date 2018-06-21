#!/bin/bash -eu

IMAGE_NAME=my-db

cd `dirname $0`

docker build -t $IMAGE_NAME .
