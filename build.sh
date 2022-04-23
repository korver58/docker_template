#!/bin/sh
docker build \
    --network host \
    --build-arg USER=$USER \
    -t template_image \
    -f Dockerfile . "$@"