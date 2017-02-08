scriptencoding utf-8

let g:neomake_airline = 0
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
let g:neomake_scss_enabled_makers = ['sasslint']
let g:neomake_markdown_enabled_makers = ['mdl', 'proselint', 'alex']
let g:neomake_sh_enabled_makers = ['sh', 'shellcheck']
let g:neomake_zsh_enabled_makers = ['zsh']
let g:neomake_yaml_enabled_makers = ['yamllint']
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']

augroup user_lint
  autocmd!
  autocmd Filetype {javascript,lua,json,vim,scss,markdown,sh,zsh,yaml,go} autocmd BufWritePost * Neomake
augroup END
