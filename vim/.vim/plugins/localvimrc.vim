Plug 'MarcWeber/vim-addon-local-vimrc', { 'on': [] }

augroup conditional_load
  autocmd!
  if !empty(glob(getcwd().'/.local-vimrc'))
    call plug#load('vim-addon-local-vimrc')
  endif
augroup END
