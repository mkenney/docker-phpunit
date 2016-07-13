#!/usr/bin/env sh

echo "Triggering builds for branch '$TRAVIS_BRANCH'"
curl -H "Content-Type: application/json" --data '{"source_type": "Branch" "source_name": "$TRAVIS_BRANCH"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/$DOCKER_TOKEN/
#if [ "master" = "$TRAVIS_BRANCH" ]; then
#    echo
#    echo
#
#elif [ "php5" = "$TRAVIS_BRANCH" ]; then
#    echo "Triggering build for tag 'php5'"
#    curl -H "Content-Type: application/json" --data '{"docker_tag": "php5"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/${DOCKER_TOKEN}/
#    echo
#fi
