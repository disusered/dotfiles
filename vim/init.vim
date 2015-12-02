" Init =========================================================================
  set nocompatible
  filetype off
  let $MYCONFIG="$HOME/.dotfiles/vim/config"

  " nvim plugin hosts
  let g:python_host_prog='/usr/local/bin/python'
  let g:python_host_skip_check=1

  source $MYCONFIG/ft.vim

  call plug#begin('~/.dotfiles/vendor/nplugged')
  source $MYCONFIG/plugins.vim

  " nvim specific
  Plug 'benekastah/neomake', {'for': ['javascript', 'javascript.jsx', 'json']}
  Plug 'neovim/node-host', {'on': [], 'do': 'npm install'}
  Plug 'kassio/neoterm'
  call plug#end()

  augroup load_us_ycm
    autocmd VimEnter * call plug#load('node-host')
  augroup END

  source $MYCONFIG/autocommands.vim
  source $MYCONFIG/n_autocommands.vim

" Settings =====================================================================
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
source $MYCONFIG/shared.vim

" nvim specific
source $MYCONFIG/n_test.vim
source $MYCONFIG/n_neoterm.vim
source $MYCONFIG/n_neomake.vim
source $MYCONFIG/n_autosave.vim
source $MYCONFIG/n_keymap.vim
source $MYCONFIG/n_lightline.vim
