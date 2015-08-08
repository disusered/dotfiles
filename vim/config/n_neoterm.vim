let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'

function! NeoClear()
  call neoterm#clear()
endfunction

function! NeoClearClose()
  call NeoClear()
  call neoterm#close_all()
endfunction

command! Tclear :call NeoClear()
command! Tclose :call NeoClearClose()
