" base
Plug 'chriskempson/base16-vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'

" editing
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tomtom/tcomment_vim'
Plug 'Wolfy87/vim-enmasse',     { 'on': 'EnMasse' }
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}

" ide -> os
Plug 'simnalamburt/vim-mundo'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-dadbod'
source $MYPLUGINS/localvimrc.vim

" ide -> tmux
Plug 'tpope/vim-dispatch'
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime', { 'for': ['javascript', 'sh', 'pgsql', 'sql']}

" ide -> language
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars', 'xml', 'htmldjango', 'blade'] }
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }
Plug 'jaawerth/nrun.vim'
Plug 'styled-components/vim-styled-components'
source $MYPLUGINS/composer.vim
source $MYPLUGINS/neomake.vim
source $MYPLUGINS/neoformat.vim
