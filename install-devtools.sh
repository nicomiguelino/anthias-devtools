#!/bin/bash -e

ANSIBLE_VERSION="ansible-core==2.12"

if ! [ "$(which ansible)"  ]; then
    sudo apt update -y && \
    sudo apt-get install -y --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip

    sudo pip install "$ANSIBLE_VERSION"
fi
