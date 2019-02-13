set encoding=utf-8
scriptencoding utf-8
set termencoding=utf-8

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

let g:mapleader = "\<Space>"
let g:maplocalleader = 'm'

if g:os == 'Darwin'
  set clipboard=unnamed
elseif g:os == 'Linux'
  set clipboard=unnamedplus
endif

set textwidth=0
set laststatus=2
set showtabline=2
set noshowmode
set mouse=
set fileformats=unix,dos,mac
set autoread
set hidden
set noruler
set number
set title
set nolazyredraw
set backspace=indent,eol,start
set nostartofline
set colorcolumn=80
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
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set wildignore+=.git\*,.hg\*,.svn\*,node_modules/**,sdfk,dsf,dsfkj,sdfkj,kjsdf,kjsdf,kjdsf,'wut','no',ya,ok,lol,wut,yayayaya,
set nobackup
set nowritebackup
set noswapfile
set foldmethod=manual
set spellfile=$HOME/.dotfiles/vim/spellfile.utf-8.add
set synmaxcol=256
set diffopt+=vertical
set updatetime=300
set shortmess+=c
set signcolumn=yes

set undofile
filetype plugin on
filetype indent on
syntax enable
syntax sync minlines=256

autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
