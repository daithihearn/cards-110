#!/bin/bash

echo "Cleaning databases out"

docker-compose -f docker-compose-mongo.yml down -v --remove-orphans