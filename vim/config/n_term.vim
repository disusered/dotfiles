let g:neoterm_position = 'horizontal'
let g:neoterm_npm_lib_cmd = 'npm run test'

command! TestAll :call neoterm#test#run('all')<cr>
command! TestFile :call neoterm#test#run('file')<cr>
command! TermClose :call neoterm#close()<cr>
command! TermClear :call neoterm#clear()<cr>
command! TermClear :call neoterm#clear()<cr>
nnoremap TermKill :call neoterm#kill()<cr>
