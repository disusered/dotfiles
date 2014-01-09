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

" etc ==========================================================================
  " set encoding
  set encoding=utf-8

  " use unix as the standard file type
  set ffs=unix,dos,mac

  " enable filetype plugins
  filetype plugin on
  filetype indent on

  " set to auto read when a file is changed from the outside
  set autoread

  " colors
  syntax enable

  " base16-shell 256 color iTerm2 fix
  let base16colorspace=256

  try
      colorscheme base16-ocean
  catch
  endtry

  set background=dark

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

  " end vundle
  filetype plugin indent on