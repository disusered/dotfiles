let g:syntastic_html_checkers            = ['']
let g:syntastic_javascript_checkers      = ['eslint']
let g:syntastic_mode_map                 = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_id_checkers              = 1
let g:syntastic_aggregate_errors         = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol             = '✕'
let g:syntastic_warning_symbol           = '▵'
let g:syntastic_style_error_symbol       = '✕'
let g:syntastic_style_warning_symbol     = '▵'

highlight SyntasticErrorSign ctermfg=1 ctermbg=18 guifg=#cc6666 guibg=#282a2e

function! s:syntastic()
  SyntasticCheck
  lwindow
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd! BufWritePost *.jsx,*.js call s:syntastic()
augroup END
