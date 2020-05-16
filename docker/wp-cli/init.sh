#! /bin/bash
source ./.env
docker exec -it ${SITENAME} /wp_init.sh