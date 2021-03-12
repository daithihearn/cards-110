#!/bin/bash

echo "Stopping databases"

docker-compose -f docker-compose-mongo.yml down