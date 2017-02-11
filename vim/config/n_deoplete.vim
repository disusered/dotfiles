set completeopt+=noselect

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#max_menu_width = 80
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']
let g:deoplete#auto_complete_delay = 50

augroup user_deoplete
  autocmd!
  autocmd CompleteDone * pclose!
augroup END

" flow
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path !=? 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

" go
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#auto_goos = 1
