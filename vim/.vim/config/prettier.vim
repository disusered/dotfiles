" disable autoformat
let g:prettier#autoformat = 0
let g:prettier#nvim_unstable_async = 1

" autoformat on save
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.babelrc,*.eslintrc,*.graphql PrettierAsync
