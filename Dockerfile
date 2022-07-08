ARG BASE_IMAGE=nvidia/cuda:11.6.1-cudnn8-devel-ubuntu18.04
FROM BASE_IMAGE

ARG UID=1000
ARG USER=developer
RUN useradd -m -u ${UID} $USER
ENV DEBIAN_FRONTEND=noninteractive \
    HOME=/home/$USER/
WORKDIR /home/$USER/

RUN apt-get update && apt-get install -y \
    curl wget git build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER $USER
CMD ["/bin/bash"]