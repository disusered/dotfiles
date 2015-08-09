let g:lightline = {
  \ 'colorscheme': 'jellybeans',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ]],
  \   'right': [ [ 'neomake', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
  \ },
  \ 'component_function': {
  \   'fugitive': 'MyFugitive',
  \   'filename': 'MyFilename',
  \   'fileformat': 'MyFileformat',
  \   'filetype': 'MyFiletype',
  \   'readonly': 'MyReadonly',
  \   'fileencoding': 'MyFileencoding',
  \   'modified': 'MyModified',
  \   'neomake': 'StatuslineLocList'
  \ },
  \ 'component_expand': {
  \ },
  \ 'component_type': {
  \   'neomake': 'error'
  \ },
  \   'separator': { 'left': '', 'right': '' },
  \   'subseparator': { 'left': '', 'right': '' }
  \ }
