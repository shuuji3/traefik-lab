#!/usr/bin/env bash

# Create a shared network `traefik_web` among traefik joined services
docker network create traefik_web

# docker-compose up
for service in traefik-service whoami-service kuard-service; do
    cd $service
    docker-compose up -d
    cd ..
done
