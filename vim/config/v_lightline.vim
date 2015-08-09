" lightline
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ]],
  \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_function': {
  \   'fugitive': 'MyFugitive',
  \   'filename': 'MyFilename',
  \   'fileformat': 'MyFileformat',
  \   'filetype': 'MyFiletype',
  \   'readonly': 'MyReadonly',
  \   'fileencoding': 'MyFileencoding',
  \   'modified': 'MyModified',
  \ },
  \ 'component_expand': {
  \   'syntastic': 'SyntasticStatuslineFlag',
  \ },
  \ 'component_type': {
  \   'syntastic': 'error',
  \ },
  \   'separator': { 'left': '', 'right': '' },
  \   'subseparator': { 'left': '', 'right': '' }
  \ }
