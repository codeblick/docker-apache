#!/usr/bin/env bash

if [[ ! -e /etc/letsencrypt/live/${LE_HOST}/privkey.pem ]]
then
  certbot certonly -n --agree-tos --standalone -t -m ${LE_MAIL} -d ${LE_HOST}
  ln -s /etc/letsencrypt/live/${LE_HOST} /etc/letsencrypt/certs
else
  certbot renew -n --standalone
fi

cron
httpd-foreground
