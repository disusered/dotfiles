set omnifunc=syntaxcomplete#Complete

au FileType scss set commentstring=/*\ %s\ */
au FileType make set noexpandtab
au FileType gitconfig set noexpandtab

autocmd BufRead,BufNewFile package.json Vison
autocmd FileType json setlocal completeopt+=menu,preview

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
