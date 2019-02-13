" Init =========================================================================
  filetype off
  set encoding=utf-8

  let $MYCONFIG='$HOME/.vim/config'
  let $MYPLUGINS='$HOME/.vim/plugins'
  source $MYCONFIG/os.vim

  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  if g:os == 'Darwin'
    set termguicolors
  elseif g:os == 'Linux'
    set notermguicolors
  endif

  call plug#begin('~/.dotfiles/vendor/plugged')

  source $MYCONFIG/ft.vim
  source $MYCONFIG/plugins.vim

  call plug#end()

" Settings =====================================================================
set ttymouse=xterm2
set undodir=$HOME/.vim/undo
source $MYCONFIG/shared.vim
