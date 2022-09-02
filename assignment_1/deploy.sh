#!/bin/bash

docker-compose run Budgy rake db:reset

docker-compose run Budgy rake db:migrate

docker-compose  up -d
