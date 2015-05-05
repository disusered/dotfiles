set omnifunc=syntaxcomplete#Complete

au FileType scss set commentstring=/*\ %s\ */
au FileType make set noexpandtab
au FileType gitconfig set noexpandtab

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
