#!/bin/bash

export DEV_UID=$(id -u)
export DEV_GID=$(id -g)
export MIGRATION_COMMAND=$@

docker-compose -f docker-compose.migration.yml run --rm cli && \
docker-compose -f docker-compose.migration.yml kill mysql && \
docker-compose -f docker-compose.migration.yml rm -f mysql
