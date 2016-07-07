FROM mkenney/php-base:php5

MAINTAINER Michael Kenney <mkenney@webbedlam.com>

##############################################################################
# phpunit
##############################################################################

ENV PHPUNIT_VERSION 4.8.26
RUN mkdir -p /root/src \
    && cd /root/src \
    && wget https://phar.phpunit.de/phpunit-${PHPUNIT_VERSION}.phar \
    && chmod +x phpunit-${PHPUNIT_VERSION}.phar \
    && mv phpunit-${PHPUNIT_VERSION}.phar /usr/local/bin/phpunit \
    && rm -rf /root/src \
    && phpunit --version

ENTRYPOINT ["/as-user","/usr/local/bin/phpunit","--colors=always"]
