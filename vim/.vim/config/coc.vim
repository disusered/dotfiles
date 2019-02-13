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
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" support functions
function! g:ShowDocumentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

augroup cocgroup
  autocmd!
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
