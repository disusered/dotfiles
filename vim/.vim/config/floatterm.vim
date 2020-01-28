let g:floaterm_position = 'center'
let g:floaterm_keymap_toggle = '<leader>t'
let g:floaterm_width = 0.8
let g:floaterm_height = 0.7
let g:floaterm_borderchars = ['', '', '', '', '', '', '', '']

augroup user_term
  if has('nvim')
    autocmd WinLeave term://* checktime
    let g:floaterm_type = 'floating'
  else
    let g:floaterm_type = 'normal'
  endif
augroup END
