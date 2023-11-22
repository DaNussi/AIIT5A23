@echo off

docker volume create htl-mysql
docker network create nw-htl

docker compose up -d

timeout /t 20

docker exec -i mysql-htl-23-24 /bin/bash ./scripts/init-db.sh
