#!/usr/bin/env bash
set -e

push() {
    docker push codeblick/apache:${1}
}

docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}

push 2.4
