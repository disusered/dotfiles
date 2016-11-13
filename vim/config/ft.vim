augroup user_ft
  autocmd!
  autocmd FileType magit set foldenable
  autocmd BufNewFile,BufRead {.jshintrc,.tern-project,.jscsrc,.eslintrc,.babelrc} set ft=json
  autocmd BufNewFile,BufRead {*.md,*.markdown} set filetype=markdown
  autocmd BufNewFile,BufRead {zshrc,zshenv} set filetype=zsh.sh
  autocmd BufNewFile,BufRead {.env} set filetype=sh
augroup END
