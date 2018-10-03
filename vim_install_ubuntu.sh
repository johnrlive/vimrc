#!/bin/bash

echo 'Ubuntu Install VIM'
sudo apt-get install vim

echo 'Ubuntu Install Fuzzy Finder'
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo 'Step 2: Setup VIM'
sh vim_setup.sh
