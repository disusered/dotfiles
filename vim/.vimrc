" Init =========================================================================
  filetype off
  set encoding=utf-8

  let $MYCONFIG='$HOME/.vim/config'
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

  " vim specific
  Plug 'maralla/completor.vim', { 'do': 'make js'}

  call plug#end()

" Settings =====================================================================
set ttymouse=xterm2
set undodir=$HOME/.vim/undo
source $MYCONFIG/shared.vim

" vim specific
source $MYCONFIG/v_completor.vim
