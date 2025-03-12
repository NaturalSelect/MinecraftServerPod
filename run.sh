#!/bin/bash

SERVER_PATH="/server"

TEMPLATE_PATH="/root/template"

set -e

function main() {
    if test ! -d ${SERVER_PATH}
    then
        echo "Please mount ${SERVER_PATH} to your server directory"
        exit 1
    fi

    pushd ${SERVER_PATH}

    if test ! -f "run.sh"
    then
        echo "run.sh not found in ${SERVER_PATH}, copy from template"
        cp -r ${TEMPLATE_PATH}/* ${SERVER_PATH}
        chmod +x run.sh
    fi

    ./run.sh

    popd
}

main