FROM php:7.4.0-cli-alpine

MAINTAINER Maciej Koprek <mkoprek@gmail.com>

RUN rm -rf /tmp/src \
    && rm -rf /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer --version=1.9.1

CMD ["/bin/sh"]
ENTRYPOINT ["/bin/sh"]
