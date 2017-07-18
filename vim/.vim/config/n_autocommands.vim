" fix bindings
augroup user_neovim
  autocmd!
  autocmd WinEnter *pid:* call feedkeys('i')
augroup END
