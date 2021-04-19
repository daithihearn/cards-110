#!/bin/bash

echo "Starting redis"

docker-compose -f docker-compose-redis.yaml up -d