#!/usr/bin/env bash
set -e

docker build apache \
    -t codeblick/apache:2.4 \
    --build-arg COB_HTTPD_VERSION=2.4 \
    -q
