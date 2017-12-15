#!/bin/sh

certbot renew #--force-renewal

cp /etc/letsencrypt/live/yaecho.net/fullchain.pem /data/server/ssl/yaecho.net/
cp /etc/letsencrypt/live/yaecho.net/privkey.pem /data/server/ssl/yaecho.net/

docker exec nginx nginx -s reload