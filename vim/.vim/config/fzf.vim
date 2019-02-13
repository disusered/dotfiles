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
