ARG matomo_version=4.15.1

FROM matomo:${matomo_version} as build-stage

WORKDIR /var/www/html

ADD matomo-cron.sh /var/www/html/matomo-cron.sh
ADD entrypoint.sh /entrypoint.sh

CMD ["apache2-foreground"]
