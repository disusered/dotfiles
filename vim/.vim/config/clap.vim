" Search configuration
let g:clap_provider_grep_executable = 'rg'
" let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden -g "\!.git/"'
let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden'


" Allow closing with <Esc>
let g:clap_insert_mode_only = 1

" Floating window size
let g:clap_layout = { 'relative': 'editor' }

" Prompt configuration
let g:clap_prompt_format = ' %provider_id% ❯ '

" Enable special fonts
" let g:clap_enable_icon = 1

" Current selection text color
hi link ClapCurrentSelection User4

let g:clap_current_selection_sign = { 'text': '⇢', 'texthl': "User5", "linehl": "User5" }
let g:clap_selected_sign = { 'text': '●', 'texthl': "User3", "linehl": "User3" }

" Fuzzy finder matches
let g:clap_fuzzy_match_hl_groups = [
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ [18 , '#5b85a3'] ,
          \ ]

" Use `:Grep` to grep project
command! -nargs=1 Grep Clap grep ++query=<args>
