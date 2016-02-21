FROM mkenney/composer:php5

MAINTAINER Michael Kenney <mkenney@webbedlam.com>

# Install
RUN apt-get -q -y update
RUN apt-get -q -y install --no-install-recommends php-pear curl
RUN apt-get clean
RUN curl -L http://pecl.php.net/get/xdebug-2.4.0RC2.tgz >> /usr/src/php/ext/xdebug.tgz
RUN tar -xf /usr/src/php/ext/xdebug.tgz -C /usr/src/php/ext/
RUN rm /usr/src/php/ext/xdebug.tgz
RUN docker-php-ext-install xdebug-2.4.0RC2
RUN docker-php-ext-install pcntl
RUN php -m

# Setup
WORKDIR /tmp
RUN composer selfupdate
RUN composer require "phpunit/phpunit:~5.1.0" --prefer-source --no-interaction
RUN ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit
VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/usr/local/bin/phpunit"]
