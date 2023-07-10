#!/bin/sh
set -e

if [ ! -e /mamoto/matomo.php ]; then
        mkdir -p /var/www/html
        cp -R /usr/src/matomo /var/www/html
        chown -R www-data:www-data .
fi

nohup /var/www/html/matomo-cron.sh >> /var/www/html/matomo-cron.log &
exec "$@"