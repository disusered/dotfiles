let g:floaterm_position = 'center'
let g:floaterm_keymap_toggle = '<leader>t'

augroup user_term
  if has('nvim')
    autocmd WinLeave term://* checktime
  endif
augroup END
