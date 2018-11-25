# Install

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
```
vim
:PlugInstall
```
# VIM Mappings Cheat Sheet

## 

## for fuzzy finder
- `<ctrl-f>` => runs :Files in vim
- `<ctrl-b>` => runs :Buffers in vim

## for Grepper (rip-grep)
- `<ctrl-g>` => runs :Grepper in vim

## for BufTabLine scrolling through tab
- `<ctrl-n>` => runs :bnext
- `<crtl-p>` => runs :bprev

## for Undo & Redo
- `<ctrl-z>` => runs :undo in vim
- `<ctrl-y>` => runs :redo in vim

## vim-choosewin
- `-` => indicates vim window

## vim-tmux-navigator
- `<ctrl-h>` => Left
- `<ctrl-j>` => Down
- `<ctrl-k>` => Up
- `<ctrl-l>` => Right
- `<ctrl-\>` => Previous split


## Clone Repo into Home directory
```
cd ~
git clone https://github.com/johnrlive/vimrc.git
cd vimrc
```

## To install on Mac run...
```
sh vim_install_mac.sh
```

## To Install on Ubuntu run...
```
sh vim_install_ubuntu.sh
```

## Install Plugs
```
$ vim
:PlugInstall
```

## Resources
[Vim-Plug](https://github.com/junegunn/vim-plug/wiki/tutorial)


