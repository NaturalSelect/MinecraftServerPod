#!/bin/bash

RootPath=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

pushd ${RootPath}

source prepare.sh

docker build . -t naturalselect/minecraft_server:${TAG} -f docker/Dockerfile

popd