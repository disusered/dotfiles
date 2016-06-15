" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-m': 'e',
  \ 'ctrl-s': 'split',
  \ 'ctrl-t': 'tabedit',
  \ 'ctrl-v': 'vsplit' }

" Neovim Statusline
function! s:fzf_statusline()
  highlight FZF ctermfg=8 ctermbg=18
  setlocal statusline=%#FZF#ctrl-v,ctrl-s,ctrl-t
endfunction

augroup user_fzf
  autocmd!
  autocmd! User FzfStatusLine call <SID>fzf_statusline()
augroup END

" Insert mode completion
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)
