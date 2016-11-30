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

  let $MYCONFIG='$HOME/.dotfiles/vim/config'

  " nvim plugin hosts
  let g:python_host_prog='/usr/local/bin/python'
  let g:python_host_skip_check=1

  source $MYCONFIG/ft.vim

  call plug#begin('~/.dotfiles/vendor/nplugged')
  source $MYCONFIG/plugins.vim

  " nvim specific
  Plug 'Shougo/echodoc.vim'
  Plug 'Shougo/deoplete.nvim'
  Plug 'carlitux/deoplete-ternjs', { 'on': [], 'do': 'npm i tern -g' }
  Plug 'steelsojka/deoplete-flow', { 'on': [], 'do': 'npm i flow-bin -g' }

  augroup neovim_conditional_load
    autocmd!
    if !empty(glob(getcwd().'/.tern-project'))
      call plug#load('deoplete-ternjs')
    endif

    if !empty(glob(getcwd().'/.flowconfig'))
      call plug#load('deoplete-flow')
    endif
  augroup END

  call plug#end()

  source $MYCONFIG/n_autocommands.vim

" Settings =====================================================================
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
source $MYCONFIG/shared.vim

" nvim specific
source $MYCONFIG/n_keymap.vim
source $MYCONFIG/n_deoplete.vim
source $MYCONFIG/n_echodoc.vim
