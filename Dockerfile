FROM balenalib/raspberrypi3:bullseye

RUN apt-get -y update && \
    apt-get -y install \
        python3 \
        python3-dev \
        python3-pip

WORKDIR /app
