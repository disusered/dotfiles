augroup user_commentstring
  autocmd FileType scss set commentstring=/*\ %s\ */
augroup END

augroup user_tabstop
  autocmd!
  autocmd FileType make set noexpandtab
  autocmd FileType gitconfig set noexpandtab
augroup END
