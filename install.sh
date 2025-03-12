#!/bin/bash

mkdir /root/template

pushd /root/template

DOWNLOAD_URL=

wget -O arclight.jar $DOWNLOAD_URL

java -jar arclight.jar nogui

popd