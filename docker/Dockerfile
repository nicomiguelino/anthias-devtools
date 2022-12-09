FROM balenalib/raspberrypi3:bullseye

RUN apt-get -y update && \
    apt-get -y install --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip && \
    apt-get clean

RUN pip install "cryptography==38.0.2"
RUN pip install "ansible-core==2.12"

ARG USER
ENV USER=$USER

RUN useradd -ms "/bin/bash" $USER && \
    usermod -aG sudo $USER && \
    passwd -d $USER

USER $USER
WORKDIR /home/$USER
COPY ./install-devtools.sh /home/$USER
COPY ./install-devtools.yml /home/$USER
