FROM mkenney/php-base:latest

MAINTAINER Michael Kenney <mkenney@webbedlam.com>

##############################################################################
# phpunit
##############################################################################

RUN cd /root/src \
    && wget https://phar.phpunit.de/phpunit-5.2.9.phar \
    && chmod +x phpunit-5.2.9.phar \
    && mv phpunit-5.2.9.phar /usr/local/bin/phpunit \
    && phpunit --version

ENTRYPOINT ["as-user","/usr/local/bin/phpunit","--colors=always"]
