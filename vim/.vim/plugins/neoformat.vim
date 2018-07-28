function! NeoformatDeps(info)
  if a:info.status == 'installed' || a:info.force
    !npm install --global prettier vue-prettier vue-template-compiler js-beautify @prettier/plugin-php
  endif
endfunction

Plug 'sbdchd/neoformat', {
  \ 'do': function('NeoformatDeps')
  \ }
