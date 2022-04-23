FROM nvidia/cuda:11.5.2-cudnn8-devel-ubuntu18.04

ARG UID=1000
ARG USER=developer
RUN useradd -m -u ${UID} $USER
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /home/$USER/

USER $USER
CMD ["/bin/bash"]