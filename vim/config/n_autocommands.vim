au BufWritePost *.js,*.jsx Neomake

" fix bindings
au WinEnter *pid:* call feedkeys('i')
