let g:go_fmt_command = 'goimports' " possible perf impact on large projects
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

" perf impact when turned on
let g:go_highlight_types = 0
let g:go_highlight_fields = 0
let g:go_highlight_functions = 0
let g:go_highlight_methods = 0
let g:go_highlight_operators = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_build_constraints = 0

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

augroup golang
  " alternate commands
  autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
  autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
  autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
  autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

  " keymap
  autocmd FileType go nmap <leader>t <Plug>(go-test)
  autocmd FileType go nmap <Leader>i <Plug>(go-describe)
  autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
  autocmd FileType go nmap <Leader>cu <Plug>(go-coverage)
  autocmd FileType go nmap <leader>r :<C-u>call <SID>build_go_files()<CR>
augroup END
