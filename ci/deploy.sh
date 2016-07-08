#!/usr/bin/env sh

curl -H "Content-Type: application/json" --data '{"source_type": "Branch", "source_name": $TRAVIS_BRANCH}' -X POST https://registry.hub.docker.com/u/mkenney/phpunit/trigger/6cfc768e-a07b-48c1-890c-24bbd071261c/
