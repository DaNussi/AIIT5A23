@echo off

docker volume create htl-mysql
docker network create nw-htl

docker compose up -d

docker exec -i mysql-htl-23-24 initialize
