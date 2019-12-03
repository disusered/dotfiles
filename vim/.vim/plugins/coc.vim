" setup
function! CocSetup(info)
  if a:info.status == 'installed' || a:info.force
    !./install.sh
    !npm install -g vim-node-rpc bash-language-server dockerfile-language-server-nodejs flow-bin vim-language-server diagnostic-languageserver 
    !pip install --user --upgrade python-language-server pyls-isort vim-vint
  endif
endfunction

" plugin
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
