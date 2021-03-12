#!/bin/bash

echo "
-> 1. Setting up replica set"

docker-compose -f docker-compose-mongo-setup.yml up

echo "
-> 2. Removing mongosetup container"
docker rm mongo-setup --force