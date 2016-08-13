#!/bin/bash
set -ev

if [ "$TRAVIS_EVENT_TYPE" == "pull_request" ]; then
    # build docker image
    docker build -t "$DOCKER_IMAGE_NAME" .
    # add commit hash tag to docker image
    docker tag "$DOCKER_IMAGE_NAME" "$DOCKER_IMAGE_NAME:commit-$TRAVIS_COMMIT"
    # add pr number tag to docker image
    docker tag "$DOCKER_IMAGE_NAME" "$DOCKER_IMAGE_NAME:pr$TRAVIS_PULL_REQUEST"
fi
