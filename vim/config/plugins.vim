" theme
Plug 'chriskempson/base16-vim'

" syntax
Plug 'sheerun/vim-polyglot'

" always load
Plug 'ryanoasis/vim-devicons'
Plug 'troydm/zoomwintab.vim'
Plug 'tpope/vim-projectionist'
Plug 'ap/vim-css-color'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-surround'
Plug 'vasconcelloslf/vim-interestingwords'
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'justinmk/vim-gtfo'
Plug 'tpope/vim-unimpaired'
Plug 'dhruvasagar/vim-table-mode'
Plug 'briancollins/vim-jst'
Plug 'elixir-lang/vim-elixir'
Plug 'junegunn/vim-peekaboo'
Plug 'SirVer/ultisnips'
Plug 'Konfekt/FastFold'
Plug 'Shougo/echodoc.vim'
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'dir': '~/.fzf' }


" load on command
Plug 'simnalamburt/vim-mundo',     { 'on': 'MundoToggle' }
Plug 'Wolfy87/vim-enmasse',        { 'on': 'EnMasse' }
Plug 'junegunn/vim-easy-align',    { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'tpope/vim-commentary',       { 'on': ['<Plug>Commentary', '<Plug>CommentaryLine']}
Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tpope/vim-repeat' | Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}

" load for ft
Plug 'tpope/vim-endwise',                { 'for': ['ruby', 'sh'] }
Plug 'heavenshell/vim-jsdoc',            { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mattn/emmet-vim',                  { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars'] }
Plug 'jpalardy/vim-slime',               { 'for': ['javascript', 'sh']}
Plug 'itspriddle/vim-marked',            { 'for': ['markdown'] }

" load conditionally
Plug 'MarcWeber/vim-addon-local-vimrc', { 'on': [] }
Plug 'editorconfig/editorconfig-vim',   { 'on': [] }
Plug 'moll/vim-node',                   { 'on': [] }
Plug 'gregsexton/gitv',                 { 'on': [] } | Plug 'tpope/vim-fugitive',  { 'on': [] }
Plug 'ternjs/tern_for_vim',             { 'on': [], 'do': 'npm i tern -g' }
Plug 'facebook/vim-flow',               { 'on': [], 'do': 'npm i flow-bin -g' }

augroup conditional_load
  autocmd!

  if !empty(glob(getcwd().'/.git/config'))
    call plug#load('vim-fugitive', 'gitv')
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

  if !empty(glob(getcwd().'/.flowconfig'))
    call plug#load('vim-flow')
  endif

  if !empty(glob(getcwd().'/.tern-project'))
    call plug#load('tern_for_vim')
  endif

augroup END
