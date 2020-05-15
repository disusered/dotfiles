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
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

augroup cocgroup
  autocmd!
  " Highlight on hold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" Use `:Prettier` to format current buffer
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
" Use `:Jest` to run tests for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')
" Use `:JestCurrent` to run tests for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Show docs
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)
