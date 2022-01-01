#!/bin/bash

if [[ "$1" != "-f" ]]; then
    cd ./cards-110-frontend
    ./build.sh

    cd ../cards-110-api
    ./build.sh

    cd ../websocket-service
    ./build.sh
else
    cd ./cards-110-api
    ./build.sh

    cd ../websocket-service
    ./build.sh
fi