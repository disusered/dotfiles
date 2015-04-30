set omnifunc=syntaxcomplete#Complete

au BufWritePost *.py,*.js Neomake
au WinEnter *pid:* call feedkeys('i')

au FileType scss set commentstring=/*\ %s\ */
au FileType make set noexpandtab
au FileType gitconfig set noexpandtab
