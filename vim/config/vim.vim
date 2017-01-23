set encoding=utf-8
scriptencoding utf-8
set termencoding=utf-8

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:mapleader = "\<Space>"
let g:maplocalleader = 'm'

set textwidth=0
set laststatus=2
set showtabline=2
set noshowmode
set mouse=
set fileformats=unix,dos,mac
set clipboard=unnamed
set autoread
set hidden
set noruler
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
set listchars=trail:●,tab:⇥ᐧ,extends:▸,precedes:◂
set nowrap
set linebreak
set breakindent
set showbreak=\ \...
set winminheight=0
set background=dark
set lazyredraw
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set wildignore+=.git\*,.hg\*,.svn\*,node_modules/**
set nobackup
set nowritebackup
set noswapfile
set foldmethod=syntax
set spellfile=$HOME/.dotfiles/vim/spellfile.utf-8.add
set synmaxcol=1024
set diffopt+=vertical
set updatetime=750

set undodir=$HOME/.dotfiles/vim/undo
set undofile

filetype plugin on
filetype indent on
syntax enable
