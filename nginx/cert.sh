#!/bin/sh

certbot renew

cp /etc/letsencrypt/live/yaecho.net/fullchain.pem /data/server/ssl/yaecho.net/
cp /etc/letsencrypt/live/yaecho.net/privkey.pem /data/server/ssl/yaecho.net/

docker restart nginx