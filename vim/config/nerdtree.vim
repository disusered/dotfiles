scriptencoding utf-8

let g:NERDTreeMapOpenSplit='s'
let g:NERDTreeMapOpenVSplit='v'

let g:NERDTreeShowHidden=1
let NERDTreeIgnore = ['node_modules', '.git']

let g:NERDTreeIndicatorMapCustom = {
    \ 'Modified'  : '~',
    \ 'Staged'    : '+',
    \ 'Untracked' : '?',
    \ 'Renamed'   : '⎌',
    \ 'Unmerged'  : '☍',
    \ 'Deleted'   : 'x',
    \ 'Dirty'     : '△ ',
    \ 'Clean'     : '✓',
    \ 'Unknown'   : '◇'
    \ }
