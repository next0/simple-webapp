#!/bin/bash
set -ev

if [ "$TRAVIS_EVENT_TYPE" == "pull_request" ]; then
    # create docker container and run tests
    docker run --rm "$DOCKER_IMAGE_NAME:pr$TRAVIS_PULL_REQUEST" npm test
fi
