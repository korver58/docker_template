#!/bin/sh
docker build \
    --network host \
    --build-arg BASE_IMAGE=nvidia/cuda:11.6.1-cudnn8-devel-ubuntu18.04 \
    --build-arg USER=developer \
    -t template_image \
    -f Dockerfile . "$@"