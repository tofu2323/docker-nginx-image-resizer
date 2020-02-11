#!/bin/sh
sed -i -e "s|\${PORT}|$PORT|" /etc/nginx/conf.d/default.conf
sed -i -e "s|\${IMAGE_HOST}|$IMAGE_HOST|" /etc/nginx/conf.d/default.conf
sed -i -e "s|\${NGINX_HOST}|$NGINX_HOST|" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"