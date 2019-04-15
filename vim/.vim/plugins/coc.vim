" setup
function! CocSetup(info)
  if a:info.status == 'installed' || a:info.force
    :call coc#util#build()
    !npm install -g vim-node-rpc bash-language-server dockerfile-language-server-nodejs
    !pip install --user --upgrade python-language-server pyls-isort
  endif
endfunction

" plugin
Plug 'neoclide/coc.nvim', {
    \ 'tag': '*',
    \ 'do': function('CocSetup')
    \ }
