FROM mkenney/php-base:latest

MAINTAINER Michael Kenney <mkenney@webbedlam.com>

##############################################################################
# phpunit
##############################################################################

ENV PHPUNIT_VERSION 5.3.4
RUN cd /root/src \
    && wget https://phar.phpunit.de/phpunit-${PHPUNIT_VERSION}.phar \
    && chmod +x phpunit-${PHPUNIT_VERSION}.phar \
    && mv phpunit-${PHPUNIT_VERSION}.phar /usr/local/bin/phpunit \
    && phpunit --version

ENTRYPOINT ["/as-user","/usr/local/bin/phpunit","--colors=always"]
