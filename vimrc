" vundle =======================================================================
  set nocompatible
  filetype off

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " init vundle with vundle
  Bundle 'gmarik/vundle'

  " bundles
    " base16 colorschemes
    Bundle 'chriskempson/base16-vim'

    " easymotion
    Bundle 'Lokaltog/vim-easymotion'

" etc ==========================================================================
  " set encoding
  set encoding=utf-8

  " remap leader key
  let mapleader = ","

  " use unix as the standard file type
  set ffs=unix,dos,mac

  " enable filetype plugins
  filetype plugin on
  filetype indent on

  " set to auto read when a file is changed from the outside
  set autoread

  " enable bg buffers
  set hidden

  " text editor
  set ruler
  set number
  set title
  set backspace=indent,eol,start
  set nostartofline
  set nowrap

  " whitespace
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set autoindent
  set copyindent
  set pastetoggle=<F2>

  " show whitespace
  autocmd BufEnter * syn match WhiteSpace / / containedin=ALL conceal cchar=·
  autocmd BufEnter * setl conceallevel=2 concealcursor=nv
  autocmd BufLeave * setl conceallevel=0 concealcursor=nv
  set listchars=tab:\ \ ,trail:·

  " colors
  syntax enable

  " base16-shell 256 color iTerm2 fix
  let base16colorspace=256

  try
      colorscheme base16-ocean
  catch
  endtry

  autocmd ColorScheme * highlight LineNr ctermbg=None
  set background=dark

  " mouse control
  set mouse=a
  set ttymouse=xterm2

  " fully collapse vertical splits
  set wmh=0

  " search
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

  " ignore compiled files
  set wildignore=*.o,*~,*.pyc
  if has("win16") || has("win32")
      set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
      set wildignore+=.git\*,.hg\*,.svn\*
  endif

  " turn backup off
  set nobackup
  set nowb
  set noswapfile

" syntax specific ==============================================================
  " make
  au FileType make set noexpandtab

  " python
  au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

  " additional ruby extensions
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,compass.config} set ft=ruby

  " additional js extensions
  au BufNewFile,BufRead *.json set ft=javascript

" plugin specific ==============================================================
  " easymotion
  let g:EasyMotion_leader_key = '<Leader>'
  map  <Leader><Leader> <Leader>f

" /vundle ======================================================================
  filetype plugin indent on