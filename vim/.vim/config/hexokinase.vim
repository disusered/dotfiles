let g:Hexokinase_ftAutoload = [
      \ 'vue',
      \ 'javascript',
      \ 'javascript.jsx',
      \ 'css',
      \ 'sass'
      \ ]

let g:Hexokinase_refreshEvents = [
      \ 'BufWritePost',
      \ 'TextChanged',
      \ 'TextChangedI'
      \ ]
if has('nvim')
  let g:Hexokinase_highlighters = ['virtual']
  let g:Hexokinase_virtualText = '■'
  " let g:Hexokinase_virtualText = '●'
else
  let g:Hexokinase_highlighters = ['sign_column']
endif
