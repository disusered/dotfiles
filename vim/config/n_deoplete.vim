let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#max_menu_width = 80
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']
let g:deoplete#sources = {}
let g:deoplete#omni_patterns = {}
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

augroup user_deoplete
  autocmd!
  autocmd CompleteDone * pclose!
augroup END
