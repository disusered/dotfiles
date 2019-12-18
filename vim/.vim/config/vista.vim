let g:vista_disable_statusline = 1

" let g:vista#executives = ['ale', 'coc', 'ctags', 'lcn', 'nvim_lsp', 'vim_lsc', 'vim_lsp']
let g:vista#executives = ['coc', 'ctags']
let g:vista_default_executive = 'coc'
let g:vista_finder_alternative_executives = ['ctags']

augroup vista
  autocmd!
  " au VimEnter * call vista#RunForNearestMethodOrFunction()
augroup END
