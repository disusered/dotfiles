" Header such as 'Commit:', 'Author:'
hi link gitmessengerHeader Identifier

" Commit hash at 'Commit:' header
hi link gitmessengerHash Comment

" History number at 'History:' header
hi link gitmessengerHistory Constant

" Normal color. This color is the most important
hi link gitmessengerPopupNormal CursorLine

" Color of 'end of buffer'. To hide '~' in popup window, set 'None'
" hi gitmessengerEndOfBuffer term=None guifg=None guibg=None ctermfg=None ctermbg=None
