" base
Plug 'chriskempson/base16-vim'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
Plug 'wincent/terminus'

" editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
" TODO: Replace with something that handles JSX
" Note it has binding to `gcc` (text command in keymaps.vim)
Plug 'tomtom/tcomment_vim'
Plug 'Wolfy87/vim-enmasse',     { 'on': 'EnMasse' }
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', '<Plug>(LiveEasyAlign)'] }
Plug 'Lokaltog/vim-easymotion', { 'on': ['<Plug>(easymotion-s)', '<Plug>(easymotion-s2)', '<Plug>(easymotion-tl)', '<Plug>(easymotion-Tl)', '<Plug>(easymotion-fl)', '<Plug>(easymotion-Fl)', '<Plug>(easymotion-next)', '<Plug>(easymotion-prev)']}

" ide -> os
Plug 'simnalamburt/vim-mundo'
Plug 'tpope/vim-eunuch'
" TODO: Replace with coc-git
" https://github.com/neoclide/coc-git
" Set up issue completion
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
source $MYPLUGINS/localvimrc.vim

" ide -> tmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime', { 'for': ['javascript', 'sh', 'pgsql', 'sql']}

" ide -> language
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" option needs to be set before loading polyglot
let g:polyglot_disabled = ['tex']
Plug 'sheerun/vim-polyglot'

Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim', { 'for': ['html', 'eruby', 'javascript', 'javascript.jsx', 'typescriptreact', 'css', 'scss', 'markdown', 'html.handlebars', 'xml', 'htmldjango', 'blade', 'vue'] }
Plug 'dhruvasagar/vim-table-mode', { 'for': ['markdown'] }
source $MYPLUGINS/coc.vim
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'lervag/vimtex'
