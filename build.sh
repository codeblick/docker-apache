#!/usr/bin/env bash
set -e

build() {
    docker build . \
        -t codeblick/apache:${1} \
        --build-arg COB_HTTPD_VERSION=${1} \
        -q
}

build 2.4
