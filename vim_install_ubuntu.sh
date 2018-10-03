#!/bin/bash

echo 'Step 1: Install VIM'
sudo apt-get install vim

### UNCOMMENT these 3 lines to install Fuzzy Finder ###
#echo 'Ubuntu Install Fuzzy Finder'
#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

### UNCOMMENT these 2 lines to install RipGrep ###
#echo 'Ubuntu install ripgrep'
#sudo apt-get install ripgrep

echo 'Step 2: Setup VIM'
sh vim_setup.sh
