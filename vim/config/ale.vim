let g:ale_lint_on_text_changed = 1 " default
let g:ale_lint_delay = 0
let g:ale_lint_on_enter = 1 " default
let g:ale_lint_on_save = 0 " default
let g:ale_set_loclist = 1 " default
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 0

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_javascript_eslint_use_global = 0

let g:ale_sign_error = '✕'
let g:ale_sign_warning = '▵'

hi link ALEErrorSign ErrorMsg
hi link ALEWarningSign WarningMsg
