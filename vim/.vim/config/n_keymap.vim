tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <silent> <Leader>ta :call neoterm#test#run('all')<cr>
nnoremap <silent> <Leader>tf :call neoterm#test#run('file')<cr>
nnoremap <silent> <Leader>tt :call neoterm#toggle()<cr>
nnoremap <silent> <Leader>tc :call neoterm#clear()<cr>
nnoremap <silent> <Leader>tk :call neoterm#kill()<cr>
