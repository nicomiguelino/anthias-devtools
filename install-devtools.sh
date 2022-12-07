#!/bin/bash -e

ANSIBLE_VERSION="ansible-core==2.12"
NVIM_CFG_URL='https://raw.githubusercontent.com/nicomiguelino/dotfiles/main/init.vim'
NVIM_CFG_DIR="${HOME}/.config/nvim"

setup_devtools () {
    sudo apt-get install -y --no-install-recommends \
        git neovim tmux ripgrep zsh tree

    mkdir -p ${NVIM_CFG_DIR} && cd $_
    curl -sL ${NVIM_CFG_URL} > init.vim

    sh -c 'curl -sfLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    nvim --headless +PlugInstall +qall

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

    sudo apt-get install -y fzf

    cd
    git clone https://github.com/gpakosz/.tmux.git
    ln -s -f .tmux/.tmux.conf
    cp .tmux/.tmux.conf.local .
}

if ! [ "$(which ansible)"  ]; then
    sudo apt update -y && \
    sudo apt-get install -y --no-install-recommends \
        python3 \
        python3-dev \
        python3-pip

    sudo pip install cryptography==38.0.2
    sudo pip install "$ANSIBLE_VERSION"
fi

setup_devtools
