let g:neoformat_enabled_javascript = ['prettier']
let g:neoformat_javascript_prettier = {
      \ 'exe': nrun#Which('prettier'),
      \ 'args': ['--write', '--config .prettierrc'],
      \ 'replace': 1
      \ }

" augroup fmt
"   autocmd!
"   autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.babelrc,*.eslintrc,*.graphql try | undojoin | Neoformat | catch /^Vim\%((\a\+)\)\=:E790/ | finally | silent Neoformat | endtry
" augroup END
