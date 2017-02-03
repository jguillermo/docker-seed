#!/bin/bash

export DEV_UID=$(id -u)
export DEV_GID=$(id -g)

chmod 0600 ./docker/ssh/id_rsa
chmod 0644 ./docker/ssh/id_rsa.pub

mkdir -p ./.composer/cache/vcs
chmod 777 -R ./.composer/

docker-compose -f docker-compose.tasks.yml run --rm cli composer $@
