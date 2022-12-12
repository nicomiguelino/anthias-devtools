#!/bin/bash -e

ANSIBLE_VERSION="ansible-core==2.12"
NVIM_CFG_URL='https://raw.githubusercontent.com/nicomiguelino/dotfiles/main/init.vim'
NVIM_CFG_DIR="${HOME}/.config/nvim"
ANSIBLE_PLAYGROUND_REPO='https://github.com/nicomiguelino/ansible-playground.git'

if ! [ "$(which ansible)"  ]; then
    sudo apt update -y && \
    sudo apt-get install -y --no-install-recommends \
        git \
        python3 \
        python3-dev \
        python3-pip

    sudo pip install cryptography==38.0.2
    sudo pip install "$ANSIBLE_VERSION"
fi

# TODO: Uncomment for production.
# sudo -u ${USER} ansible localhost \
#     -m git \
#     -a "repo=$ANSIBLE_PLAYGROUND_REPO dest=/home/${USER}/ansible-playground version=main force=no"
# cd /home/${USER}/ansible-playground

# TODO: Create separate Docker files for development.
# TODO: Modify this script so that it can run in both dev and prod environments.

ansible-playbook $HOME/install-devtools.yml

