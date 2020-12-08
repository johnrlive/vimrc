#!/bin/bash

echo 'Install OhMyZsh'

apt get install -y git curl wget

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


## Install ZSH plugins
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# add plugin in ~/.zshrc file : plugins=( [plugins...] zsh-syntax-highlighting)
