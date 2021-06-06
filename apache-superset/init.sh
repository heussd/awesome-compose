#!/bin/sh


docker exec -it apache-superset_superset_1 superset fab create-admin \
               --username admin \
               --firstname Superset \
               --lastname Admin \
               --email admin@superset.com \
               --password admin


docker exec -it apache-superset_superset_1 superset db upgrade

docker exec -it apache-superset_superset_1 superset load_examples

docker exec -it apache-superset_superset_1 superset init