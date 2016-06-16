" Init =========================================================================
  set nocompatible
  filetype off
  set notermguicolors
  let $MYCONFIG="$HOME/.dotfiles/vim/config"

  " nvim plugin hosts
  let g:python_host_prog='/usr/local/bin/python'
  let g:python_host_skip_check=1

  source $MYCONFIG/ft.vim

  function! Do(init)
    UpdateRemotePlugins
  endfunction

  call plug#begin('~/.dotfiles/vendor/nplugged')
  source $MYCONFIG/plugins.vim

  " nvim specific
  Plug 'jaawerth/neomake-local-eslint-first' | Plug 'benekastah/neomake'
  Plug 'carlitux/deoplete-ternjs', {'do': 'npm i tern -g'} | Plug 'Shougo/deoplete.nvim', { 'do': function('Do') }
  call plug#end()

  source $MYCONFIG/autocommands.vim
  source $MYCONFIG/n_autocommands.vim

" Settings =====================================================================
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
source $MYCONFIG/shared.vim

" nvim specific
source $MYCONFIG/n_test.vim
source $MYCONFIG/n_neomake.vim
source $MYCONFIG/n_keymap.vim
source $MYCONFIG/n_deoplete.vim
