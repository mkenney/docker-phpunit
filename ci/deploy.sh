#!/usr/bin/env sh

if [ "master" = "$TRAVIS_BRANCH" ]; then
    DOCKER_TAG=latest
else
    DOCKER_TAG=$TRAVIS_BRANCH
fi

echo "TRAVIS_BRANCH: $TRAVIS_BRANCH"
echo "DOCKER_TAG: $DOCKER_TAG"
echo curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "'$DOCKER_TAG'"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": "$DOCKER_TAG"}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
