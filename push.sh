#!/usr/bin/env bash
set -e

docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}

docker push codeblick/apache:2.4
docker push codeblick/apache:2.4-le
