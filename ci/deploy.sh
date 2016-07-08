#!/usr/bin/env sh

if [ "master" = "$TRAVIS_BRANCH" ]; then
    echo "Triggering builds for tags 'latest' and 'php7'"
    curl -H "Content-Type: application/json" --data '{"docker_tag": "latest"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
    curl -H "Content-Type: application/json" --data '{"docker_tag": "php7"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
elif [ "php5" = "$TRAVIS_BRANCH" ]; then
    echo "Triggering build for tag 'php5'"
    curl -H "Content-Type: application/json" --data '{"docker_tag": "php5"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
fi
