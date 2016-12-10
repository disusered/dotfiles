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
    return ''
  else
    return ''
endfunction

set laststatus=2
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}   " Current mode
set statusline+=%1*\ %<%f\ %m\ %w\ %{ReadOnly()}\         " File+path
set statusline+=%#warningmsg#
set statusline+=%2*\ %{neomake#statusline#LoclistStatus()}
set statusline+=%*
set statusline+=%1*\ %=                                  " Space
set statusline+=%1*\ %y                                  " FileType
set statusline+=%1*\ \[%{(&fenc!=''?&fenc:&enc)}]\ [%{&ff}]\  " Encoding & Fileformat

hi User1 ctermfg=20 ctermbg=18 guifg=#a7adb9 guibg=#343d46
hi User2 ctermfg=3 ctermbg=18 guifg=#bd626b guibg=#343d46
