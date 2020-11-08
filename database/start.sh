#!/bin/bash

echo "Starting databases"

docker-compose -f docker-compose-mongo.yml up -d