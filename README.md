![MIT License](https://img.shields.io/github/license/mkenney/docker-phpunit.svg) ![Docker pulls](https://img.shields.io/docker/pulls/mkenney/phpunit.svg) ![Docker stars](https://img.shields.io/docker/stars/mkenney/phpunit.svg) ![Image size](https://img.shields.io/badge/image size-334MB-blue.svg) ![Github issues](https://img.shields.io/github/issues-raw/mkenney/docker-phpunit.svg)

# Portable phpunit script

## Tagged Dockerfiles

* [latest](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile), [php7](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile)

  [![PHP v7](https://img.shields.io/badge/PHP-v7.0.6-8892bf.svg) ![PHPUnit v5](https://img.shields.io/badge/PHPUnit-v5.3.4-brightgreen.svg)](https://github.com/mkenney/docker-phpunit)

* [php5](https://github.com/mkenney/docker-phpunit/blob/php5/Dockerfile)

  [![PHP v5](https://img.shields.io/badge/PHP-v5.6.21-8892bf.svg) ![PHPUnit v4](https://img.shields.io/badge/PHPUnit-v4.8.26-brightgreen.svg)](https://github.com/mkenney/docker-phpunit/tree/php5)

## Synopsys

The [source repo](https://github.com/mkenney/docker-phpunit) contains a `phpunit` script that wraps executing a docker container to execute [phpunit](https://phpunit.de/). The current directory is mounted into `/src` in the container and a wrapper script executes `phpunit` as a user who's `uid` and `gid` matches those properties on that directory. This way any output is written as the directory owner/group instead of root or a random user.

Because this runs out of a Docker container, all code required by your tests must be available within the current directory. Including files from other directories on the system will not work. The simplest solution is to use [Composer](https://hub.docker.com/r/mkenney/composer/) to install any dependencies.

### Installation

This assumes that you already have [Docker](https://www.docker.com) installed. A running `docker` daemon is required.

Installation is just a matter of putting the [shell script](https://github.com/mkenney/docker-phpunit/blob/master/bin/phpunit) somewhere in your path and making it executable. I like to put my scripts in a `bin/` folder in my home directory:
* PHP 5

  `wget -nv -O ~/bin/phpunit https://raw.githubusercontent.com/mkenney/docker-phpunit/php5/bin/phpunit && chmod 0755 ~/bin/phpunit`
* PHP 7

  `wget -nv -O ~/bin/phpunit https://raw.githubusercontent.com/mkenney/docker-phpunit/master/bin/phpunit && chmod 0755 ~/bin/phpunit`
* `phpunit self-update`

  The `self-update` command pulls down the latest docker image and then updates the shell script itself. If you don't have write permissions on the shell script you'll get a permissions error, you can run the self-update command with `sudo` if needed.

## Source Repo

* [mkenney/docker-phpunit](https://github.com/mkenney/docker-phpunit)

## Docker image

* [mkenney/phpunit](https://hub.docker.com/r/mkenney/phpunit/)

Based on [mkenney/php-base](https://hub.docker.com/r/mkenney/php-base/) (debian:jessie) which is simply a php CLI binary built with various tools, most notably Oracle OCI libraries, because they're a pain to install.

# Tagged Dockerfiles

* [latest](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile), [php7](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile)
* [php5](https://github.com/mkenney/docker-phpunit/blob/php5/Dockerfile)
