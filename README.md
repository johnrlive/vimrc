# VIM Mappings Cheat Sheet

## Change Quotes

Use ci", which means: change what inside the double quotes.

You can also manipulate other text objects in a similar way, e.g.:

```
ci' - change inside the single quotes
ciw - change inside a word
ci( - change inside parentheses
dit - delete inside an HTML tag, etc.
More about different vim text objects here.
```

## for fuzzy finder

nnoremap <C-p> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>
nnoremap <C-g> :GFiles<Cr>
nnoremap <C-f> :Rg!

## for Grepper (rip-grep)

- `<ctrl-g>` => runs :Grepper in vim

## for BufTabLine scrolling through tab

- `<ctrl-]>` => runs :bnext
- `<crtl-[>` => runs :bprev

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

# Install

## choose directory to install project

Use home directory or this folder `/opt/vimrc`

## Clone project

`git clone git@github.com:johnrlive/vimrc.git`

## Install (NVI)[https://github.com/neovim/neovim/wiki/Installing-Neovim]

## Install (Vim Plug)[https://github.com/junegunn/vim-plug]

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- open vim and install

```
vim
:PlugInstall
```

## Install (coc-nvim)[https://github.com/neoclide/coc.nvim]

`curl -sL install-node.now.sh/lts | bash`

#Resources

[Vim-Plug](https://github.com/junegunn/vim-plug/wiki/tutorial)
