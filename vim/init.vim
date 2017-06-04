" Init =========================================================================
  set inccommand=split
  filetype off
  set encoding=utf-8

  set termguicolors
  let g:terminal_color_0 = '#2b303b'
  let g:terminal_color_1 = '#bd626b'
  let g:terminal_color_2 = '#a4bd8e'
  let g:terminal_color_3 = '#eaca8f'
  let g:terminal_color_4 = '#90a1b2'
  let g:terminal_color_5 = '#b38fac'
  let g:terminal_color_6 = '#97b5b4'
  let g:terminal_color_7 = '#c0c5ce'
  let g:terminal_color_8 = '#65737d'
  let g:terminal_color_9 = '#bd626b'
  let g:terminal_color_10 = '#a4bd8e'
  let g:terminal_color_11 = '#eaca8f'
  let g:terminal_color_12 = '#90a1b2'
  let g:terminal_color_13 = '#b38fac'
  let g:terminal_color_14 = '#97b5b4'
  let g:terminal_color_15 = '#eff1f5'
  let g:terminal_color_16 = '#cf8772'

  " nvim plugin hosts
  let g:python_host_prog = '/usr/local/bin/python2'
  let g:python3_host_prog = '/usr/local/bin/python3'
  let g:python_host_skip_check=1

  let $MYCONFIG='$HOME/.dotfiles/vim/config'
  call plug#begin('~/.dotfiles/vendor/nplugged')

  source $MYCONFIG/ft.vim
  source $MYCONFIG/plugins.vim

  " nvim specific
  Plug 'roxma/nvim-completion-manager'

  call plug#end()

  source $MYCONFIG/n_autocommands.vim

" Settings =====================================================================
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
source $MYCONFIG/shared.vim

" nvim specific
source $MYCONFIG/n_keymap.vim
