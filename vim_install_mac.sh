#!/bin/bash

echo 'MAC Install VIM'
brew update && brew install vim fzf

echo 'Step 2: Setup VIM'
sh vim_setup.sh

echo '============================================================'
echo 'Run the line below to install Auto Complete for Fuzzy Finder'
echo '============================================================'
echo ''
echo '$(brew --prefix)/opt/fzf/install'
