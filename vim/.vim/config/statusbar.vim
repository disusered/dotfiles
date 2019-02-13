scriptencoding utf-8

let g:currentmode={
    \ 'n'  : 'NORMAL ',
    \ 'no' : 'N·Operator Pending ',
    \ 'v'  : 'VISUAL ',
    \ 'V'  : 'V·Line ',
    \ '' : 'V·Block ',
    \ 's'  : 'Select ',
    \ 'S'  : 'S·Line ',
    \ '' : 'S·Block ',
    \ 'i'  : 'INSERT ',
    \ 'R'  : 'REPLACE ',
    \ 'Rv' : 'V·Replace ',
    \ 'c'  : 'Command ',
    \ 'cv' : 'Vim Ex ',
    \ 'ce' : 'Ex ',
    \ 'r'  : 'Prompt ',
    \ 'rm' : 'More ',
    \ 'r?' : 'Confirm ',
    \ '!'  : 'Shell ',
    \ 't'  : 'Terminal '
    \}

function! ReadOnly()
  if &readonly || !&modifiable
    return ' '
  else
    return ''
  endif
endfunction

function! MyPrefix(...)
  let l:value = a:1
  let l:hide = a:0 >= 2 ? a:2 : 0
  let l:prefix = a:0 >= 3 ? a:3 : ' » '

  if ReadOnly() !=? ''
    return ''
  endif

  if l:hide && winwidth(0) < 80
    return ''
  endif

  if strlen(l:value)
    return l:prefix
  endif
  return ''
endfunction

function! MyFiletype(...)
  let l:alternate = a:0 >= 1 ? a:1 : ''
  if ReadOnly() !=? ''
    return ''
  endif
  if winwidth(0) < 80 && strlen(l:alternate)
    return l:alternate
  else
    return strlen(&filetype) ? &filetype . ' ' : ''
  endif
endfunction

function! MyFileformat()
  if ReadOnly() !=? ''
    return ''
  endif
  if winwidth(0) > 80
    return &fileformat . ' '
  endif
  return ''
endfunction

function! MyEncoding(fileencoding)
  if ReadOnly() !=? ''
    return ''
  endif
  if winwidth(0) > 80
    return strlen(a:fileencoding) ? a:fileencoding : ''
  endif
  return ''
endfunction

function MyFilename()
  if &filetype ==? 'help'
    return 'Help '
  endif

  if winwidth(0) > 80
    return expand('%'). ' '
  endif
  return expand('%:t') . ' '
endfunction

function MyMode()
  if &filetype ==? 'help'
    return ''
  endif

  return toupper(g:currentmode[mode()])
endfunction

function MyErrors()
  if exists(':Neomake')
    return neomake#statusline#LoclistStatus()
  endif
  return ''
endfunction

function MyModified()
  if &modified == 1
    return ' + '
  else
    return ''
  endif
endfunction

augroup statusline
  autocmd!
  au InsertEnter * hi! link StatusLine User3
  au InsertLeave * hi! link StatusLine User1
  au InsertEnter * hi! link User7 User3
  au InsertLeave * hi! link User7 User7
augroup END

set laststatus=2
set statusline=
set statusline+=%1*\                             " Space
set statusline+=%0*%{MyMode()}                   " Current mode
set statusline+=%7*%{MyPrefix(MyFilename())}     " FileType Prefix
set statusline+=%1*%{MyFilename()}               " Filename
set statusline+=%1*%{MyModified()}               " Modified
set statusline+=%1*%{ReadOnly()}                 " Read only flag
set statusline+=%2*%{MyPrefix(MyErrors())}       " Neomake Prefix
set statusline+=%2*%{MyErrors()}                 " Neomake
set statusline+=%1*%=                            " Align right
set statusline+=%7*%{MyPrefix(MyFiletype())}     " FileType Prefix
set statusline+=%1*%{MyFiletype()}               " FileType
set statusline+=%7*%{MyPrefix(MyFileformat(),1)} " FileFormat Prefix
set statusline+=%1*%{MyFileformat()}             " FileFormat
set statusline+=%7*%{MyPrefix(&fileencoding,1)}  " Encoding Prefix
set statusline+=%1*%{MyEncoding(&fileencoding)}  " Encoding
set statusline+=%1*\                             " Space

hi! link StatusLine User1
hi! User1 ctermfg=20 ctermbg=18 guifg=#a7adb9 guibg=#343d46
hi! User2 ctermfg=3 ctermbg=18 guifg=#bd626b guibg=#343d46
hi! User3 ctermfg=2 ctermbg=18 guifg=#a4bd8e guibg=#343d46
hi! User4 ctermfg=18 ctermbg=5 guifg=#9a8ec4 guibg=#343d46
hi! User5 ctermfg=18 ctermbg=4 guifg=#5b85a3 guibg=#343d46
hi! User6 ctermfg=20 ctermbg=18 guifg=#343d46 guibg=#4f5b66
hi! User7 ctermfg=20 ctermbg=18 guifg=#4f5b66 guibg=#343d46
