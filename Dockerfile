ARG BASE_IMAGE=nvidia/cuda:12.2.2-cudnn8-devel-ubuntu22.04
FROM ${BASE_IMAGE}

ARG UID=1000
ARG USER=developer
RUN useradd -m -u ${UID} ${USER}
ENV DEBIAN_FRONTEND=noninteractive \
    HOME=/home/${USER}
WORKDIR ${HOME}

RUN apt-get update && apt-get install -y \
    curl wget git build-essential \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${USER}
RUN echo 'export PATH=:$PATH' >> .bashrc
CMD ["/bin/bash"]
