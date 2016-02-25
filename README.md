# docker-phpunit
PHPUnit test runner

Simple usage:

```docker pull mkenney/phpunit```

```docker run -v $(pwd):/app:rw mkenney/phpunit -c path/to/phpunit.xml```

Because this runs out of a Docker container, all code required by your
tests must be available within the current directory. Including files
from other directories on the system will not work.

The simplest solution is to use [Composer](https://github.com/mkenney/docker-composer)
to install dependencies.

