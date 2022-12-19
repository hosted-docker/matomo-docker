ARG matomo_version=4.13.0

FROM matomo:${matomo_version} as build-stage

WORKDIR /var/www/html

RUN rm -rf *

RUN curl -fsSL -o matomo.tar.gz \
		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"

RUN tar -xzf matomo.tar.gz
RUN rm matomo.tar.gz

RUN chown -R www-data:www-data /var/www/html/matomo
