let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 1
let g:gitgutter_signs = 0
let g:gitgutter_highlight_lines = 1

" use default mappings from source, but no other keymap
" from https://github.com/airblade/vim-gitgutter/blob/eaea1c5bba8e0f72cbc923c51a18c5c9918eb513/plugin/gitgutter.vim#L144-L145
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\<C-U>execute v:count1 . 'GitGutterNextHunk'\<CR>"
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\<C-U>execute v:count1 . 'GitGutterPrevHunk'\<CR>"
