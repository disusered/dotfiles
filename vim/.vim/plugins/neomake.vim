function! NeomakeDeps(info)
  if a:info.status == 'installed' || a:info.force
    !gem install mdl
    !pip install --user yamllint
  endif
endfunction

Plug 'benekastah/neomake', { 'do': function('NeomakeDeps') }
