#!/bin/bash

echo '============================================================'
echo 'MAC Install VIM, FuzzyFinder, RipGrep'
echo '============================================================'
brew update && brew install vim fzf ripgrep

echo '============================================================'
echo 'Step 2: Setup VIM'
echo '============================================================'
sh vim_setup.sh

echo '============================================================'
echo 'Run the line below to install Auto Complete for Fuzzy Finder'
echo '============================================================'
echo ''
echo '$(brew --prefix)/opt/fzf/install'
