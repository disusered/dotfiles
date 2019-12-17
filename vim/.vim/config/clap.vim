let g:clap_provider_grep_executable = 'rg'
let g:clap_provider_grep_opts = '-H --no-heading --vimgrep --smart-case --hidden -g "!.git/"'

" Use `:Grep` to grep project
command! -nargs=0 Grep :Clap grep
