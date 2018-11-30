ARG COB_HTTPD_VERSION

FROM httpd:${COB_HTTPD_VERSION}

ENV PHP_FPM_HOST=php
ENV PHP_FPM_PORT=9000
ENV LE_HOST=example.com
ENV LE_MAIL=mail@example.com

COPY --chown=www-data httpd-vhosts.conf /usr/local/apache2/conf/extra/
COPY --chown=www-data httpd.conf /usr/local/apache2/conf/
COPY init-container.sh /usr/local/bin/

RUN apt-get update -qq && \
    apt-get install -y -qq python-certbot-apache

VOLUME /etc/letsencrypt/certs

CMD ["init-container.sh"]
