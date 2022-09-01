#!/bin/bash

sudo docker-compose run Budgy rake db:reset

sudo docker-compose run Budgy rake db:migrate

sudo IMGVERSION=$1 docker-compose -d -f docker-compose.yml up
