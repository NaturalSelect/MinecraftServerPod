#!/bin/bash

source version.sh

ROOT_PATH=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)


if test -z ${SERVER_PATH}
then
    SERVER_PATH="${ROOT_PATH}/server"
fi

docker run \
    --rm \
    -it \
    -v ${SERVER_PATH}:/server \
    -e TZ="Asia/Shanghai" \
    -v /etc/localtime:/etc/localtime:ro \
    naturalselect/minecraft_server:${TAG} \