" theme
Plug 'chriskempson/base16-vim'

" syntax
Plug 'sheerun/vim-polyglot'

" always load
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'benekastah/neomake'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-obsession'
Plug 'reasonml/vim-reason'

" load on command
Plug 'Wolfy87/vim-enmasse',     { 'on': 'EnMasse' }
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'scrooloose/nerdtree',     { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}

" load for ft
Plug 'heavenshell/vim-jsdoc',            { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim',                  { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars'] }
Plug 'jpalardy/vim-slime',               { 'for': ['javascript', 'sh']}
Plug 'dhruvasagar/vim-table-mode',       { 'for': ['markdown'] }

" load conditionally
Plug 'MarcWeber/vim-addon-local-vimrc', { 'on': [] }
Plug 'editorconfig/editorconfig-vim',   { 'on': [] }
Plug 'moll/vim-node',                   { 'on': [] }
Plug 'jreybert/vimagit', { 'on': [] } | Plug 'tpope/vim-fugitive',  { 'on': [] }

augroup conditional_load
  autocmd!

  if !empty(glob(getcwd().'/.git/config'))
    call plug#load('vim-fugitive', 'vimagit')
  endif

  if !empty(glob(getcwd().'/.local-vimrc'))
    call plug#load('vim-addon-local-vimrc')
  endif

  if !empty(glob(getcwd().'/.editorconfig'))
    call plug#load('editorconfig-vim')
  endif

  if !empty(glob(getcwd().'/package.json'))
    call plug#load('vim-node')
  endif
augroup END
