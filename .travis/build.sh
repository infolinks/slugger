#!/usr/bin/env bash

set -e

docker build -t infolinks/slugger:${TRAVIS_COMMIT} .

if [[ ${TRAVIS_TAG} =~ ^v[0-9]+$ ]]; then
    docker tag infolinks/slugger:${TRAVIS_COMMIT} infolinks/slugger:${TRAVIS_TAG}
    docker push infolinks/slugger:${TRAVIS_TAG}
    docker tag infolinks/slugger:${TRAVIS_COMMIT} infolinks/slugger:latest
    docker push infolinks/slugger:latest
fi
