#!/usr/bin/env bash

# docker-compose up
for service in traefik-service whoami-service kuard-service; do
    cd $service
    docker-compose up -d
    cd ..
done
