ARG COB_HTTPD_VERSION

FROM httpd:${COB_HTTPD_VERSION}

ENV PHP_FPM_HOST=php
ENV PHP_FPM_PORT=9000

COPY --chown=www-data httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY --chown=www-data httpd.conf /usr/local/apache2/conf/httpd.conf
