![MIT License](https://img.shields.io/github/license/mkenney/docker-phpunit.svg) ![Docker pulls](https://img.shields.io/docker/pulls/mkenney/phpunit.svg) ![Docker stars](https://img.shields.io/docker/stars/mkenney/phpunit.svg) ![Github issues](https://img.shields.io/github/issues-raw/mkenney/docker-phpunit.svg)

![PHP v5](https://img.shields.io/badge/PHP-v5.6.21-8892bf.svg) ![phpunit v4](https://img.shields.io/badge/phpunit-v4.8.26-brightgreen.svg)

# Portable phpunit script

The [source repo](https://github.com/mkenney/docker-phpunit) contains a `phpunit` script that wraps executing a docker container to execute [phpunit](https://phpunit.de/). The current directory is mounted into `/src` in the container and a wrapper script executes `phpunit` as a user who's `uid` and `gid` matches those properties on that directory. This way any output is written as the directory owner/group instead of root or a random user.

Because this runs out of a Docker container, all code required by your tests must be available within the current directory. Including files from other directories on the system will not work. The simplest solution is to use [Composer](https://hub.docker.com/r/mkenney/composer/) to install any dependencies.

# Source Repository

* [mkenney/docker-phpunit](https://github.com/mkenney/docker-phpunit)

# Docker image

* [mkenney/phpunit](https://hub.docker.com/r/mkenney/phpunit/)

Based on [mkenney/php-base](https://hub.docker.com/r/mkenney/php-base/) (debian:jessie) which is simply a php CLI binary built with various tools, most notably Oracle OCI libraries, because they're a pain to install.

# Tagged Dockerfiles

* [latest](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile), [php7](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile)
* [php5](https://github.com/mkenney/docker-phpunit/blob/php5/Dockerfile)
