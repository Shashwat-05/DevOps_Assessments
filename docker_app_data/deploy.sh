#!/bin/bash

sudo docker-compose run Budgy rake db:reset

sudo docker-compose run Budgy rake db:migrate

sudo docker-compose -f docker-compose.yml up -d
