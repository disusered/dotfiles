" base
Plug 'chriskempson/base16-vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'
Plug 'wincent/terminus'

" editing
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
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
source $MYPLUGINS/localvimrc.vim

" ide -> tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime', { 'for': ['javascript', 'sh', 'pgsql', 'sql']}

" ide -> language
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'css', 'scss', 'markdown', 'html.handlebars', 'xml', 'htmldjango', 'blade', 'vue'] }
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }
source $MYPLUGINS/coc.vim
Plug 'RRethy/vim-hexokinase'
Plug 'lervag/vimtex'
