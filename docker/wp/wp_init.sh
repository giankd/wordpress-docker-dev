#! /bin/bash

sudo -u www-data wp core install \
  --url=http://127.0.0.1:8080 \
  --title=${WP_TITLE} \
  --admin_name=${ADMIN_NAME} \
  --admin_password=${ADMIN_PASSWORD} \
  --admin_email=${ADMIN_EMAIL}