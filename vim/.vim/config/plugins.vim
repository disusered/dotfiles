" theme
Plug 'chriskempson/base16-vim'

" syntax
Plug 'sheerun/vim-polyglot'

" always load
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-endwise'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-obsession'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-slash'
Plug 'simnalamburt/vim-mundo'
Plug 'junegunn/gv.vim' | Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-abolish'
Plug 'jaawerth/nrun.vim'
function! NeomakeDeps(info)
  if a:info.status == 'installed' || a:info.force
    !gem install mdl
    !pip install --user yamllint
  endif
endfunction
Plug 'benekastah/neomake', { 'do': function('NeomakeDeps') }
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'md'] }

" load on command
Plug 'Wolfy87/vim-enmasse',     { 'on': 'EnMasse' }
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'scrooloose/nerdtree',     { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}

" load for ft
Plug 'heavenshell/vim-jsdoc',      { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim',            { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars', 'xml', 'htmldjango'] }
Plug 'jpalardy/vim-slime',         { 'for': ['javascript', 'sh', 'pgsql', 'sql']}
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }

function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" load conditionally
Plug 'MarcWeber/vim-addon-local-vimrc', { 'on': [] }

augroup conditional_load
  autocmd!

  if !empty(glob(getcwd().'/.local-vimrc'))
    call plug#load('vim-addon-local-vimrc')
  endif
augroup END
