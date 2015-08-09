function! StatuslineLocList()
    let errcount = 0
    let buf = bufnr('%')
    for err in getloclist(winnr())
        if err.bufnr ==# buf
            let errcount += 1
        endif
    endfor
    if errcount
        return 'Errors: '.errcount.' '
    else
        return ''
    endif
endfunction

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! MyFugitive()
  try
    if expand('%:t') !~? 'Gundo' && exists('*fugitive#head')
      let mark = ' '
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
         \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
         \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction
