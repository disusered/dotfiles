let g:signify_sign_show_count        = 0
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '-'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change            = '△'

augroup user_git
  autocmd!
  autocmd User Fugitive SignifyRefresh
  if has('nvim')
    autocmd WinLeave term://* SignifyRefresh
  endif
augroup END
