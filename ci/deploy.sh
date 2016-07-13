#!/usr/bin/env sh

echo "Triggering builds for branch '$TRAVIS_BRANCH'"
echo curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "$TRAVIS_BRANCH"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/$DOCKER_TOKEN/
curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "$TRAVIS_BRANCH"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/$DOCKER_TOKEN/
