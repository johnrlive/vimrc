" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'm-kat/aws-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'romgrk/winteract.vim'
Plug 'ap/vim-buftabline'
Plug 't9md/vim-choosewin'
Plug 'junegunn/goyo.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'gioele/vim-autoswap'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'vim-syntastic/syntastic'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
" Fuzzy Finder
Plug 'junegunn/fzf.vim'
" If installed using Homebrew uncomment line below
Plug '/usr/local/opt/fzf'
" Else installed using git uncomment line below
" Plug '~/.fzf'
" Autocomplete 
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" Colorscheme
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

"Key Mappings
" Leader Key
let mapleader = ','
"let mapleader = '\'


"WinInteract 
nmap <leader>w        :InteractiveWindow<CR>

"NerdTREE
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" How can I open NERDTree automatically when vim starts up on opening a directory?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle NerdTree with 'return' key
map \ :NERDTreeToggle<CR>
" Move to NerdTree to the right
let g:NERDTreeWinPos = "right"


" BufTabLine
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Fuzzy Finder Mappings
nnoremap <C-f> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>

" Grepper
nnoremap <C-r> :Grepper<CR>
" RipGrep mapping g
nnoremap <leader>r :Rg<Cr>

" Undo
nnoremap <C-z> :undo<Cr>
nnoremap <C-y> :redo<Cr>

" no need for <SHIFT> colon
nnoremap ; :

" Tab spacing
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
setlocal tabstop=2
set shiftwidth=2

" Show matching brackets use % to navigate
set showmatch

"Vim Multiple Cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" ===VIM CHOOSEWIN===
nmap  -  <Plug>(choosewin)
" ===/Key Mappings===

"tmux
set t_Co=256

" ===Theme Settings===
" lightline
"let g:lightline= { 'colorscheme': 'OceanicNext' }


" = Theme Settings - Oceanic
syntax enable
" for vim 8
"if (has("termguicolors"))
" set termguicolors
"endif
colorscheme OceanicNext


" ===General Settings===
" To enable mouse uncomment line below
"set mouse=a
"set number
syntax on
set ruler
set cursorline
" Switch between the last two files
nnoremap <Leader><Leader> <C-^>
" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
" === Ident Guides ===
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1
" ===/General Settings===


" ===Custom .vimrc.local===
if filereadable($HOME . "~/.vimrc.local")
  source ~/.vimrc.local
endif
" ==/Custom .vimrc.local===
