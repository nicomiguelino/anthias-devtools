FROM balenalib/raspberrypi3:bullseye

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip && \
    apt-get clean

ARG USER
ENV USER=$USER

RUN useradd -ms "/bin/bash" $USER
USER $USER
WORKDIR /home/$USER
