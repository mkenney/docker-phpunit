#!/bin/env sh

docker run --rm -t -v $(pwd):/app:rw mkenney/phpunit $@
