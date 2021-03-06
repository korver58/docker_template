#!/bin/bash
docker run --rm -it \
    --gpus all \
    --privileged \
    --net=host \
    --volume=$(pwd):/home/developer/host_dir \
    --env="DISPLAY=${DISPLAY}" \
    --env="HOSTIP=${HOSTIP}" \
    template_image:latest