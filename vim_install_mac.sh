#!/bin/bash

echo 'MAC Install VIM'
brew update && brew install vim

echo 'Step 2: Setup VIM'
sh vim_setup.sh
