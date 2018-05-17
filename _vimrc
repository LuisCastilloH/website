set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$USERPROFILE/Vim/vimfiles/bundle/Vundle.vim
call vundle#begin('$USERPROFILE\Vim\vimfiles\bundle\')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --------------- Luis -----------
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
" --------------------------------
" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

let g:airline#extensions#tabline#enabled = 1
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>

set hidden
set nowrap
set tabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftwidth=4
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
set visualbell
set noerrorbells
set nobackup
set noswapfile
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set scrolloff=4

set noundofile
set expandtab
syntax on
set guifont=Consolas:h12:cANSI:qDRAFT
set ruler
set lines=40 
set columns=85
set colorcolumn=72,80
Bundle 'vim-colors-solarized'
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=dark
endif
