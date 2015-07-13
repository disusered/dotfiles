set omnifunc=syntaxcomplete#Complete

au FileType scss set commentstring=/*\ %s\ */
au FileType make set noexpandtab
au FileType gitconfig set noexpandtab

autocmd BufRead,BufNewFile package.json Vison
autocmd FileType json setlocal completeopt+=menu,preview
