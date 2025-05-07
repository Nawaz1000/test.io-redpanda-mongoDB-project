#!/bin/bash

echo "Starting NATS and Redpanda..."
cd redpanda-nets.io
docker-compose up -d
cd ..

echo "Starting MongoDB New..."
cd mongodb-new
docker-compose up -d
cd ..

echo "Starting MongoDB Old..."
cd mongodb-old
docker-compose up -d
cd ..

echo "All services started!"
docker ps
