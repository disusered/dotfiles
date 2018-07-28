" Init =========================================================================
  filetype off
  set encoding=utf-8
  set inccommand=split

  let $MYCONFIG='$HOME/.config/nvim/config'
  let $MYPLUGINS='$HOME/.config/nvim/plugins'
  source $MYCONFIG/os.vim

  if g:os == 'Darwin'
    set termguicolors
  elseif g:os == 'Linux'
    set notermguicolors
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
  endif

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
  if g:os == 'Darwin'
    let g:python_host_prog = '/usr/local/bin/python2'
    let g:python3_host_prog = '/usr/local/bin/python3'
  elseif g:os == 'Linux'
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_prog = '/usr/bin/python3'
  endif
  " let g:python_host_skip_check=1

  call plug#begin('~/.dotfiles/vendor/nplugged')

  source $MYCONFIG/ft.vim
  source $MYCONFIG/plugins.vim

  source $MYPLUGINS/languageclient.vim
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  call plug#end()

  source $MYCONFIG/n_langserver.vim
  source $MYCONFIG/n_deoplete.vim
  source $MYCONFIG/n_autocommands.vim

" Settings =====================================================================
set undodir=$HOME/.config/nvim/undo
source $MYCONFIG/shared.vim
source $MYCONFIG/n_keymap.vim
