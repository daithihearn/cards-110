#!/bin/bash

echo "Cleaning redis out"

docker-compose -f docker-compose-redis.yaml down -v --remove-orphans