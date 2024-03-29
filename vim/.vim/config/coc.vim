let g:coc_status_error_sign = "✕"
let g:coc_status_warning_sign = "▵"

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-python',
  \ 'coc-yaml',
  \ 'coc-json',
  \ 'coc-vimlsp',
  \ 'coc-elixir',
  \ 'coc-cssmodules',
  \ 'coc-sh',
  \ 'coc-tailwindcss',
  \ 'coc-vetur',
  \ 'coc-snippets',
  \ 'coc-eslint',
  \ 'coc-jest',
  \ 'coc-prettier',
  \ ]

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

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

augroup cocgroup
  autocmd!
  " Highlight on hold
  autocmd CursorHold * silent call CocActionAsync('highlight')
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
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
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
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
