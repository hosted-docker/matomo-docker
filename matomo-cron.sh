#!/bin/sh

while :
do
  # matomo core:archive
  /usr/local/bin/php /var/www/html/matomo/console core:archive --matomo-domain=localhost
  sleep 300
done