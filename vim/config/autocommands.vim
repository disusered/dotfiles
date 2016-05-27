set omnifunc=syntaxcomplete#Complete

au FileType scss set commentstring=/*\ %s\ */
au FileType make set noexpandtab
au FileType gitconfig set noexpandtab

autocmd FileType json setlocal completeopt+=menu,preview

autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
