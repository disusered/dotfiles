" setup
function! CocSetup(info)
  if a:info.status == 'installed' || a:info.force
    !npm install -g vim-node-rpc bash-language-server dockerfile-language-server-nodejs flow-bin
    !pip install --user --upgrade python-language-server pyls-isort
  endif
endfunction

" plugin
Plug 'neoclide/coc.nvim', {
      \ 'branch': 'release',
      \ 'do': function('CocSetup')
      \ }
