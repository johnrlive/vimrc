" <!--Vim-Plug Settings-->
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'pearofducks/ansible-vim'
Plug 'gioele/vim-autoswap'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" <!--/Vim-Plug Settings-->

" <!--NerdTree Settings-->
" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle NerdTree with 'return' key
map <return> :NERDTreeToggle<CR>
" <!--/NerdTree Settings-->

" <!--HardTime Settings-->
let g:hardtime_default_on = 1

" <!--Key Mappings-->
" no need for <SHIFT> colon
nnoremap ; :

" To enable mouse uncomment line below
"set mouse=a

" <!--/Key Mappings-->
