Plug 'chriskempson/base16-vim'
Plug 'troydm/zoomwintab.vim'
Plug 'tpope/vim-projectionist'
Plug 'scrooloose/nerdtree',              { 'on': 'NERDTreeToggle'}
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-git',                    { 'for': ['git','gitconfig','gitcommit','gitrebase','gitsendemail']}
Plug 'gregsexton/gitv',                  { 'on': 'Gitv' }
Plug 'arkwright/vim-manhunt',            { 'on': 'Manhunt' }
Plug 'Raimondi/delimitMate'
Plug 'junegunn/vim-easy-align',          { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish',                { 'on': ['Abolish', 'Subvert']}
Plug 'vasconcelloslf/vim-interestingwords'
Plug 'tpope/vim-commentary',             { 'on': ['<Plug>Commentary', '<Plug>CommentaryLine']}
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'justincampbell/vim-eighties'
Plug 'simnalamburt/vim-mundo',           { 'on': 'GundoToggle' }
Plug 'Wolfy87/vim-enmasse',              { 'on': 'EnMasse' }
Plug 'tpope/vim-endwise',                { 'for': ['ruby', 'sh'] }
Plug 'jpalardy/vim-slime',               { 'for': ['javascript', 'sh', 'markdown']}
Plug 'itspriddle/vim-marked',            { 'for': ['markdown'] }
Plug 'tpope/vim-markdown',               { 'for': ['markdown'] }
Plug 'mattn/emmet-vim',                  { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars'] }
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'justinmk/vim-gtfo'
Plug 'tpope/vim-unimpaired'
Plug 'dhruvasagar/vim-table-mode'
Plug 'jeetsukumaran/vim-buffergator',    { 'on': 'BuffergatorOpen' }
Plug 'csscomb/vim-csscomb',              { 'for': ['css', 'scss'] }
Plug 'groenewege/vim-less',              { 'for': 'less' }
Plug 'mxw/vim-jsx',                      { 'for': ['javascript.jsx'] }
Plug 'heavenshell/vim-jsdoc',            { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript',          { 'for': ['javascript', 'javascript.jsx'] }
Plug 'janko-m/vim-test',                 { 'for': ['javascript', 'javascript.jsx'] }
Plug 'facebook/vim-flow',                { 'for': ['javascript', 'javascript.jsx'] }
Plug 'moll/vim-node',                    { 'for': ['javascript', 'javascript.jsx'] }
Plug 'kchmck/vim-coffee-script',         { 'for': 'coffee' }
Plug 'elzr/vim-json',                    { 'for': 'json' }
Plug 'Quramy/vison',                     { 'on': ['VisonSetup', 'Vison'], 'for': 'json' }
Plug 'vim-ruby/vim-ruby',                { 'for': 'ruby' }
Plug 'tpope/vim-rails',                  { 'for': 'ruby' }
Plug 'tpope/vim-bundler',                { 'for': 'ruby' }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'mustache' }
Plug 'digitaltoad/vim-jade',             { 'for': 'jade' }
Plug 'honza/dockerfile.vim',             { 'for': 'dockerfile' }
Plug 'junegunn/fzf',                     { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

if !empty(glob(getcwd().'/.local-vimrc'))
  Plug 'MarcWeber/vim-addon-local-vimrc'
endif

" post
Plug 'tpope/vim-repeat' | Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}
Plug 'ervandew/supertab',                { 'on': [] }
Plug 'SirVer/ultisnips',                 { 'on': [] }
Plug 'tpope/vim-fugitive',               { 'on': [] }
Plug 'editorconfig/editorconfig-vim',    { 'on': [] }
Plug 'Valloric/YouCompleteMe',           { 'do': './install.sh', 'on': [] }

augroup load_us_ycm
  autocmd!
  autocmd VimEnter * call plug#load('vim-fugitive')
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe', 'editorconfig-vim')
                     \| call youcompleteme#Enable() | autocmd! load_us_ycm
augroup END

autocmd! User YouCompleteMe call youcompleteme#Enable()

