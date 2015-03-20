au FileType make set noexpandtab
au FileType gitconfig set noexpandtab
au FileType gitcommit setlocal omnifunc=pickler#omnifunc
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType javascript setlocal omnifunc=tern#Complete
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType scss set commentstring=/*\ %s\ */
au BufWritePost *.py,*.js Neomake
