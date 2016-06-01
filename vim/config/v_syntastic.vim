let g:syntastic_html_checkers                       = ['']
let g:syntastic_javascript_checkers                 = ['jshint']
let g:syntastic_javascript_jsxhint_exec             = 'jsx-jshint-wrapper'
let g:syntastic_mode_map                            = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_id_checkers                         = 1
let g:syntastic_aggregate_errors                    = 1
let g:syntastic_error_symbol                        = '✕'
let g:syntastic_warning_symbol                      = '▵'
let g:syntastic_style_error_symbol                  = '✕'
let g:syntastic_style_warning_symbol                = '▵'

function! s:syntastic()
  SyntasticCheck
endfunction

augroup AutoSyntastic
  autocmd!
  " autocmd BufWritePost *.jsx,*.js call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
endfunction
