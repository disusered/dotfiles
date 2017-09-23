" fix bindings
augroup user_neovim
  autocmd!
  autocmd WinEnter *pid:* call feedkeys('i')
augroup END

" focus events
au FocusGained * if &autoread | silent checktime | endif
