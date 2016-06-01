let g:tabprefix = ''
let g:tablabel =
  \ '%N%{flagship#tabmodified()} %{flagship#cwd("shorten",",")}'
let g:flagship_skip = 'fugitive#statusline'


" Define all the different modes
let g:currentmode={
  \ 'n'  : 'Normal',
  \ 'no' : 'N·Operator Pending',
  \ 'v'  : 'Visual',
  \ 'V'  : 'V·Line',
  \ '' : 'V·Block',
  \ 's'  : 'Select',
  \ 'S'  : 'S·Line',
  \ '' : 'S·Block',
  \ 'i'  : 'Insert',
  \ 'R'  : 'Replace',
  \ 'Rv' : 'V·Replace',
  \ 'c'  : 'Command',
  \ 'cv' : 'Vim Ex',
  \ 'ce' : 'Ex',
  \ 'r'  : 'Prompt',
  \ 'rm' : 'More',
  \ 'r?' : 'Confirm',
  \ '!'  : 'Shell',
  \ 't'  : 'Terminal'
  \}

" Mode
function! ModeStatus()
  if &filetype == "help"
    return ''
  else
    if (mode() =~# '\v(n|no)')
      " hi FlagshipMode ctermfg=5 guifg=#9a8ec4
      return winwidth(0) > 70 ? ' NORMAL' : 'N'
    elseif (mode() ==# 't')
      " hi FlagshipMode ctermfg=15 guifg=#dddddd
      return winwidth(0) > 70 ? ' TERMINAL' : 'T'
    elseif (mode() =~# '\v(v|V)' || g:currentmode[mode()] ==# 'V·Block')
      " hi FlagshipMode ctermfg=4 guifg=#5984ac
      return winwidth(0) > 70 ? ' VISUAL' : 'V'
    elseif (mode() ==# 'i')
      " hi FlagshipMode ctermfg=2 guifg=#98c696
      return winwidth(0) > 70 ? ' INSERT' : 'I'
    else
      return ''
    endif
  endif
endfunction

" Neomake
function! NeomakeStatus(type)
  if &filetype == "help"
    return ''
  else
    if exists('*neomake#statusline#LoclistCounts')
      let l:count = neomake#statusline#LoclistCounts()
      let l:cond = has_key(l:count, a:type)
      let l:errors = l:cond ? l:count[a:type] : '0'
      return l:cond ? '  ' . a:type . ': ' . l:errors . ' ' : ''
    else
      return ''
    endif
  endif
endfunction

" Fugitive
function! FugitiveStatus()
  if &filetype != "help"
    try
      if expand('%:t') !~? 'Mundo' && exists('*fugitive#head')
        let mark = ''
        let _ = fugitive#head()
        return strlen(_) ? winwidth(0) > 70 ? ' '.mark.' '._ : mark : ' '
      endif
    catch
    endtry
  endif
  return ''
endfunction

" Read Only
function! ReadOnlyStatus()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

autocmd User Flags call Hoist("window", -2000, " %{ReadOnlyStatus()}", {'hl': 'FlagshipLock'})
if isdirectory(glob(getcwd().'/.git'))
  autocmd User Flags call Hoist("window", -1500, " %{FugitiveStatus()} ", {'hl': 'FlagshipGit'})
endif
autocmd User Flags call Hoist("window", -1000, "%{ModeStatus()} ", {'hl': 'FlagshipVisualMode'})
autocmd User Flags call Hoist("window", "%{NeomakeStatus('E')}", {'hl': 'FlagshipError'})
autocmd User Flags call Hoist("window", "%{NeomakeStatus('W')}", {'hl': 'FlagshipWarn'})
