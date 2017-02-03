#!/bin/bash

php ./migrations/config/doctrine-migrations.phar migrations:$1 --configuration=./migrations/config/config.yml --db-configuration=./migrations/config/db-config.php
