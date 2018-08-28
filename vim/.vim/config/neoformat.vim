let g:neoformat_prettier_config = {
      \ 'exe': nrun#Which('prettier'),
      \ 'args': ['--write', '--config .prettierrc'],
      \ 'replace': 1
      \ }

let g:neoformat_enabled_javascript = ['prettier']
" let g:neoformat_javascript_prettier = g:neoformat_prettier_config

let g:neoformat_enabled_scss = ['prettier']
" let g:neoformat_scss_prettier = g:neoformat_prettier_config

let g:neoformat_enabled_json = ['prettier']
" let g:neoformat_json_prettier = g:neoformat_prettier_config

let g:neoformat_enabled_vue = ['prettier']
let g:neoformat_vue_prettier = {
      \ 'exe': nrun#Which('vue-prettier'),
      \ 'args': ['--write', '--config .prettierrc'],
      \ 'replace': 1
      \ }

let g:neoformat_enabled_html = ['htmlbeautify']

let g:neoformat_enabled_yaml = ['prettier']
