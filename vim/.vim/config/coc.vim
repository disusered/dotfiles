let g:vim_node_rpc_folder = "~/.nvm/versions/node/v11.1.0/lib/node_modules"
let g:coc_status_error_sign = "✕"
let g:coc_status_warning_sign = "▵"

" custom
hi default link CocErrorSign ErrorMsg
hi default link CocWarningSign WarningMsg
hi default link CocInfoSign SignInformation
hi default link CocHintSign SignHint
" default
hi default link CocErrorHighlight CocUnderline
hi default link CocWarningHighlight CocUnderline
hi default link CocInfoHighlight CocUnderline
hi default link CocHintHighlight CocUnderline
hi default CocHighlightText  guibg=#111111 ctermbg=223
hi default link CocHighlightRead  CocHighlightText
hi default link CocHighlightWrite  CocHighlightText
hi default CocCodeLens ctermfg=Gray guifg=#999999

" ultisnips
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? coc#rpc#request('doKeymap', ['snippets-expand-jump','']) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

" support functions
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup cocgroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,javascript,json,jsx setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  " Highlight on hold
  " autocmd CursorHold * silent call CocActionAsync('highlight')
augroup end

" :Format command
command! -nargs=0 Format :call CocAction('format')
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Show docs
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Jest commands
" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])
