#!/bin/bash
mkdir -p /opt/backup
source /opt/shvirtd-example-python/.env
docker run --rm --entrypoint "" --network shvirtd-example-python_backend -v /opt/backup:/backup schnitzler/mysqldump mysqldump --opt -h db -u root -p"$MYSQL_ROOT_PASSWORD" --result-file=/backup/dump-$(date +%F-%H%M%S).sql virtd