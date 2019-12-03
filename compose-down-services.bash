#!/usr/bin/env bash

# docker-compose up
for service in traefik-service whoami-service kuard-service; do
    cd $service
    docker-compose down
    cd ..
done

# Delete the shared network `traefik_web`
docker network rm traefik_web
