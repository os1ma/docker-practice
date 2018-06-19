#!/bin/bash -eu

cd `dirname $0`

./my-app/build.sh
./my-web/build.sh
./my-db/build.sh
