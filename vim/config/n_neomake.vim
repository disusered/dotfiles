let g:neomake_airline =  0
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

let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_json_enabled_makers = ['jsonlint']

" Use local eslint if it exists
function! NeomakeESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
    let l:eslint = l:npm_bin . '/eslint'
  endif

  let b:neomake_javascript_eslint_exe = l:eslint
endfunction

autocmd FileType javascript :call NeomakeESlintChecker()
autocmd! BufWritePost,BufReadPost *.jsx,*.js,*.json Neomake
