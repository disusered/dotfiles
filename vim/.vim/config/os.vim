" system dependent
if !exists('g:os')
  if has('win32') || has('win16')
    let g:os = 'Windows'
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif

if g:os == 'Darwin'
  " mac stuff
endif

if g:os == 'Windows'
  " windows stuff
endif

if g:os == 'Linux'
  " linux stuff
endif
