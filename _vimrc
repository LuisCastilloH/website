set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --------------- Luis -----------
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
" --------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""mappings"""""""""""""""""""""""""""
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding with the spacebar
nnoremap <space> za
"""""""""""""""""""end of mappings"""""""""""""""""""""
" docstrings are showed for folded code
let g:SimpylFold_docstring_preview=1
" make your code look pretty
let python_highlight_all=1
syntax on

" Enable folding
set foldmethod=indent
set foldlevel=99

" Proper PEP8 indentation added (Python)
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent

au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhiteSpace /\s\+$/

" For other files...
au BufNewFile, BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
set hidden
set nowrap
set backspace=indent,eol,start
set copyindent
set number
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
nnoremap <CR> :noh<CR><CR>
set incsearch
set history=1000
set title
"set visualbell
set noerrorbells
set nobackup
set noswapfile
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set scrolloff=4

set noundofile
"set guifont=Consolas:h12:cANSI:qDRAFT
set ruler
set lines=40 
set columns=85
set colorcolumn=72,80

if has('gui_running')
    set background=light
    colorscheme solarized
else
    set background=dark
    colorscheme zenburn
endif
