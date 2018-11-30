#!/usr/bin/env bash

if [[ ! -e /etc/letsencrypt/live/${LE_HOST}/privkey.pem ]]
then
  certbot -n certonly --agree-tos --standalone -t -m ${LE_MAIL} -d ${LE_HOST}
  ln -s /etc/letsencrypt/live/${LE_HOST} /etc/letsencrypt/certs
else
  certbot renew
fi

httpd-foreground
