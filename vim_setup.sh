#!/bin/bash
echo 'Install Vim-Plug'
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#echo 'mkdir ~/.vim/plugged'
#mkdir ~/.vim/plugged

echo '=== BACKUP ~/.vimrc'
cp ~/.vimrc ~/.vimrc.backup

echo '=== DELETE original ~/.vimrc'
rm ~/.vimrc

echo '=== SYMLINK to ~/.vimrc'
ln -s ~/vimrc/.vimrc ~/.vimrc
