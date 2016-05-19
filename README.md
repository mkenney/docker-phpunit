# Environment independent phpunit script

The source repo contains a `phpunit` script that wraps executing a docker container to execute [phpunit](https://phpunit.de/). The current directory is mounted into /src in the container and a wrapper script executes composer as a user who's `uid` and `gid` matches those properties on that directory. This way any output is written as the directory owner/group instead of root or a random user.

# SOURCE REPOSITORY

* [mkenney/docker-phpunit](https://github.com/mkenney/docker-phpunit)

# Docker image

* [mkenney/phpunit](https://hub.docker.com/r/mkenney/phpunit/)

Based on [mkenney/php-base](https://hub.docker.com/r/mkenney/php-base/) (debian:jessie) which is simply a php CLI binary built with various tools, most notably Oracle OCI libraries, because they're a pain to install.

# Tagged Dockerfiles

* [latest](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile), [php7](https://github.com/mkenney/docker-phpunit/blob/master/Dockerfile)
* [php5](https://github.com/mkenney/docker-phpunit/blob/php5/Dockerfile)
