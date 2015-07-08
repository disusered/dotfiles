let base16colorspace=256
colorscheme base16-tomorrow

let mapleader = ","
let g:maplocalleader = '='

set encoding=utf-8
set laststatus=2
set mouse=a
set ffs=unix,dos,mac
set clipboard=unnamed
set autoread
set hidden
set ruler
set number
set title
set backspace=indent,eol,start
set nostartofline
set colorcolumn=80
set nofoldenable
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set copyindent
set pastetoggle=<F2>
set list
set listchars=trail:·,tab:⇥ᐧ
"set listchars=trail:␣,tab:⇥ᐧ,nbsp:⍽,eol:¶,extends:▸,precedes:◂
set nowrap
set linebreak
set nolist
set breakindent
set showbreak=\ \...
set wmh=0
set background=dark
set lazyredraw
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set wildignore+=.git\*,.hg\*,.svn\*,node_modules/**
set nobackup
set nowb
set noswapfile
set foldmethod=syntax
set spellfile=$HOME/.dotfiles/vim/spellfile.utf-8.add
set synmaxcol=2048

filetype plugin on
filetype indent on
syntax enable
