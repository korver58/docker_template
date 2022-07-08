#!/bin/sh
docker build \
    --network host \
    --build-arg USER=developer \
    -t template_image \
    -f Dockerfile . "$@"