let g:neomake_error_sign = {
    \ 'text': '✕',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_warning_sign = {
    \ 'text': '▵',
    \ 'texthl': 'WarningMsg',
    \ }

hi WarningMsg ctermfg=3 ctermbg=18
hi ErrorMsg ctermfg=1 ctermbg=18
