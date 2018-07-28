set completeopt+=noselect
" set omnifunc=LanguageClient#complete
" set completefunc=LanguageClient#complete

call deoplete#custom#source('ultisnips', 'rank', 1000)

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#max_menu_width = 80
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']
" let g:deoplete#auto_complete_delay = 50

augroup user_deoplete
  autocmd!
  autocmd CompleteDone * pclose!
augroup END
