augroup user_ft
  autocmd!
  autocmd FileType magit set foldenable
  autocmd FileType make set noexpandtab
  autocmd FileType gitconfig set noexpandtab
  autocmd FileType tex setlocal spell
  autocmd FileType markdown setlocal spell
  autocmd FileType gitcommit setlocal spell

  autocmd BufNewFile,BufRead {.prettierrc,.jshintrc,.tern-project,.jscsrc,.eslintrc,.babelrc} set ft=json
  autocmd BufNewFile,BufRead {*.md,*.markdown} set filetype=markdown
  autocmd BufNewFile,BufRead {zshrc,zshenv} set filetype=zsh.sh
  autocmd BufNewFile,BufRead {Brewfile} set filetype=ruby
  autocmd BufNewFile,BufRead {.env*} set filetype=sh
  autocmd BufNewFile,BufRead {.luacheckrc} set filetype=lua
augroup END
