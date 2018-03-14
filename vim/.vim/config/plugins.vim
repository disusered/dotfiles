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
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-obsession'
Plug 'editorconfig/editorconfig-vim'
Plug 'freitass/todo.txt-vim'
Plug 'junegunn/vim-slash'
Plug 'simnalamburt/vim-mundo'
Plug 'junegunn/gv.vim' | Plug 'tpope/vim-fugitive'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-abolish'
function! NeomakeDeps(info)
  if a:info.status == 'installed' || a:info.force
    !gem install mdl
    !pip install --user yamllint
  endif
endfunction
Plug 'benjie/local-npm-bin.vim'
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
Plug 'wannesm/wmgraphviz.vim',     { 'for': ['dot'] }
Plug 'actionshrimp/vim-xpath',     { 'for': ['xml'] }
Plug 'chrisbra/csv.vim',           { 'for': ['csv'] }
Plug 'heavenshell/vim-jsdoc',      { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim',            { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars', 'xml', 'htmldjango'] }
Plug 'jpalardy/vim-slime',         { 'for': ['javascript', 'sh', 'pgsql', 'sql']}
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }

if g:os == 'Linux'
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
endif

" load conditionally
Plug 'MarcWeber/vim-addon-local-vimrc', { 'on': [] }
Plug 'moll/vim-node',                   { 'on': [] }

augroup conditional_load
  autocmd!

  if !empty(glob(getcwd().'/.local-vimrc'))
    call plug#load('vim-addon-local-vimrc')
  endif

  if !empty(glob(getcwd().'/package.json'))
    call plug#load('vim-node')
  endif
augroup END
