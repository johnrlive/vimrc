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
Plug 'airblade/vim-gitgutter'                 "Git Gutter 
Plug 'tpope/vim-fugitive'                     "Git Support
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'gioele/vim-autoswap'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'w0rp/ale'                               " Language Linter
Plug 'cohama/lexima.vim' 

" Language support
Plug 'alvan/vim-closetag'	              	    " Auto close (X)HTML tags
Plug 'othree/html5.vim'                       " HTML5 omnicomplete and syntax
Plug 'plasticboy/vim-markdown'                " Markdown support
Plug 'JamshedVesuna/vim-markdown-preview'     " Preview markdown
Plug 'elixir-editors/vim-elixir'              " Elixir language support
Plug 'slashmili/alchemist.vim'                " Elixir language support
Plug 'ElmCast/elm-vim'                        " Elm language support
Plug 'SirVer/ultisnips'

" Javascript support
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Test Plugins
Plug 'janko-m/vim-test' "https://github.com/janko-m/vim-test

" Search
Plug 'romainl/vim-cool'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
" Fuzzy Finder
Plug 'junegunn/fzf.vim'
" If installed using Homebrew uncomment line below
Plug '/usr/local/opt/fzf'
" Else installed using git uncomment line below
" Plug '~/.fzf'
" Autocomplete 
"if has('nvim')
"  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
"  Plug 'Shougo/deoplete.nvim'
"  Plug 'roxma/nvim-yarp'
"  Plug 'roxma/vim-hug-neovim-rpc'
"endif
" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'liuchengxu/space-vim-dark'
"Plug 'NLKNguyen/papercolor-theme'
call plug#end()


" Emmet Settings for JSX
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
  \      'extends' : 'jsx',
  \  },
  \}

" Ale Settings
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" Lexima customizations
call lexima#add_rule({'char': '*', 'input_after': '*', 'filetype': 'markdown'})
call lexima#add_rule({'char': '*', 'at': '\%#\*', 'leave': 1, 'filetype': 'markdown'})
call lexima#add_rule({'char': '<BS>', 'at': '\*\%#\*', 'delete': 1, 'filetype': 'markdown'})

" Custom surround
autocmd FileType markdown let b:surround_42 = "*\r*"

" Trim white space from these file types
autocmd FileType *.c,*.cpp,*.java,*.php,*.ex,*.exs,*.eex,*.js,*.sh autocmd BufWritePre <buffer> %s/\s\+$//e

" formatting
set tabstop=2
set softtabstop=2              " Tab key indents by 2 spaces.
set shiftwidth=2               " >> indents by 2 spaces.
set shiftround                 " >> indents to next multiple of 'shiftwidth'
set expandtab                  " Use spaces instead of tabs.
set autoindent                 " Indent according to previous line.
set backspace=indent,eol,start " Make backspace work as you would expect.

" appearance
set showmatch
set display+=lastline          " Show as much as possible of the last line.
set showmode                   " Show current mode in command-line.
set showcmd                    " Show already typed keys when more are expected.
set ttyfast                    " Faster redrawing.
"set number relativenumber      " Turn on relative line numbers
set laststatus=2               " Always display the status line
set switchbuf=usetab           " on open buffer search everywhere

" searching
set hlsearch                   " highlight search items
set ignorecase                 " case-insensitive searches
set smartcase                  " ignore case

" Bugfix https://github.com/vim/vim/issues/2329
set bt=

" Enable Deoplete
let g:deoplete#enable_at_startup = 1

"Key Mappings
" Leader Key
let mapleader = ','

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
"let g:NERDTreeWinPos = "right"


" BufTabLine
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Fuzzy Finder Mappings
nnoremap <C-f> :Files<Cr>
nnoremap <C-b> :Buffers<Cr>

" vim-grepper
nnoremap <C-g> :Grepper -tool rg<CR>
nnoremap <leader>g :Grepper -tool rg -noopen<CR>
" Start searching the word under the cursor:
nnoremap <leader>* :Grepper -tool rg -cword -noprompt<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
" Optional. The default behaviour should work for most users.
let g:grepper               = {}
let g:grepper.tools         = ['git', 'ag', 'rg']
let g:grepper.jump          = 1
let g:grepper.next_tool     = '<leader>g'
let g:grepper.simple_prompt = 1
let g:grepper.quickfix      = 0

" RipGrep
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


"==== Theme Settings - Oceanic
colorscheme molokai
"colorscheme OceanicNext
syntax enable
" for vim 8
if (has("termguicolors"))
	set termguicolors
endif


" ===General Settings===
" enable ale
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'css': ['prettier'], 
\   'typescript': ['prettier'],
\   'scss': ['prettier'], 
\   'json': ['prettier'], 
\   'graphql': ['prettier'], 
\   'markdown': ['prettier'], 
\   'elixir': ['credo'],
\   'python': ['autopep8'],
\   'ruby': ['rubocop'],
\   'elm': ['elm_format'],
\}

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

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
