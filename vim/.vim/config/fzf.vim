" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-m': 'e',
  \ 'ctrl-s': 'split',
  \ 'ctrl-t': 'tabedit',
  \ 'ctrl-v': 'vsplit' }

" Neovim Statusline
function! s:fzf_statusline()
  highlight FZF ctermfg=8 ctermbg=18 guifg=#65737d guibg=#343d46
  setlocal statusline=%#FZF#ctrl-v,ctrl-s,ctrl-t
endfunction

augroup user_fzf
  autocmd!
  autocmd! User FzfStatusLine call <SID>fzf_statusline()
augroup END

" Insert mode completion
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Show hidden files in Ag
" function! fzf#vim#ag_raw(command_suffix, ...)
"   return call('fzf#vim#grep', extend(['ag --hidden --nogroup --column --color '.a:command_suffix, 1], a:000))
" endfunction

if has('nvim')
  " let $FZF_DEFAULT_COMMAND =  "ag --hidden --pager \"less -R\" --color-line-number 1\;35 --color-path 1\;37 --color-match 7\;34"
  let $FZF_DEFAULT_OPTS='--color hl:2,hl+:2,fg:8,fg+:15,bg+:0,info:8,prompt:5,spinner:135,pointer:12,marker:2 --layout=reverse  --margin=1,3'

  let g:fzf_buffers_jump = 1
  let g:fzf_layout = { 'window': 'call FloatingFZF()' }
endif

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')

  let height = float2nr(10)
  let width = float2nr(80)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = 8

  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }

  call nvim_open_win(buf, v:true, opts)
endfunction
