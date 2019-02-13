function! NeomakeDeps(info)
  if a:info.status == 'installed' || a:info.force
    !gem install mdl
    !pip install --user yamllint
    !npm install -g tslint tslint tslint-react tslint-config-prettier eslint_d
  endif
endfunction

Plug 'benekastah/neomake', { 'do': function('NeomakeDeps') }
