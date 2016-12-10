let g:neomake_airline =  0
let g:neomake_open_list = 0
let g:neomake_error_sign = {
    \ 'text': '✕',
    \ 'texthl': 'ErrorMsg',
    \ }

let g:neomake_warning_sign = {
    \ 'text': '▵',
    \ 'texthl': 'WarningMsg',
    \ }

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_json_enabled_makers = ['jsonlint']
let g:neomake_lua_enabled_makers = ['luacheck']

augroup user_lint
  autocmd!
  autocmd Filetype {javascript,lua,json} autocmd BufWritePost,BufEnter * Neomake
augroup END
