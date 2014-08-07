" NeoBundle =======================================================================
  set nocompatible
  filetype off

  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))

  let g:neobundle#install_process_timeout = 600

  " yo dawg
  NeoBundleFetch 'Shougo/neobundle.vim'
  " bundles
    " base16 colorschemes
    NeoBundle 'chriskempson/base16-vim'
    " easymotion
    NeoBundle 'Lokaltog/vim-easymotion'
    " supertab
    NeoBundle 'ervandew/supertab'
    " dispatch
    NeoBundle 'tpope/vim-dispatch'
    " syntastic
    NeoBundle 'scrooloose/syntastic'
    " surround
    NeoBundle 'tpope/vim-surround'
    " speeddating
    NeoBundle 'tpope/vim-speeddating'
    " abolish
    NeoBundle 'tpope/vim-abolish'
    " easy-align
    NeoBundle 'junegunn/vim-easy-align'
    " commentary
    NeoBundle 'tpope/vim-commentary'
    " eunuch
    NeoBundle 'tpope/vim-eunuch'
    " unimpaired
    NeoBundle 'tpope/vim-unimpaired'
    " multiple cursors
    NeoBundle 'terryma/vim-multiple-cursors'
    " airline
    NeoBundle 'bling/vim-airline'
    " repeat
    NeoBundle 'tpope/vim-repeat'
    " fugitive
    NeoBundle 'tpope/vim-fugitive'
    " gitgutter
    NeoBundle 'airblade/vim-gitgutter'
    " vinegar
    NeoBundle 'tpope/vim-vinegar'
    " editorconfig
    NeoBundle 'editorconfig/editorconfig-vim'
    " tagbar
    NeoBundle 'majutsushi/tagbar'
    " tmuxline
    " NeoBundle 'edkolev/tmuxline.vim'
    " delimitor
    NeoBundle 'Raimondi/delimitMate'
    " local vimrc
    NeoBundle 'MarcWeber/vim-addon-local-vimrc'
    " json
    NeoBundle 'elzr/vim-json'
    " handlebars
    NeoBundle 'mustache/vim-mustache-handlebars'
    " autocomplete
    NeoBundle 'Valloric/YouCompleteMe'
    " tmux nav
    NeoBundle 'christoomey/vim-tmux-navigator'
    " vim slime
    NeoBundle 'jpalardy/vim-slime'
    " ultisnips
    NeoBundle 'SirVer/ultisnips'
    " vimseek
    NeoBundle 'goldfeld/vim-seek'
    " vimproc
    let vimproc_updcmd = has('win64') ?
      \ 'tools\\update-dll-mingw 64' : 'tools\\update-dll-mingw 32'
execute "NeoBundle 'Shougo/vimproc.vim'," . string({
      \ 'build' : {
      \     'windows' : vimproc_updcmd,
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ })


  " lazy load
    " unite
    NeoBundle 'Shougo/unite.vim', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'command': ['Unite']
                \ },
                \}

    NeoBundle 'Shougo/unite-outline', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'command': ['Unite']
                \ },
                \}

    NeoBundle 'tacroe/unite-mark', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'command': ['Unite']
                \ },
                \}

    " coffeescript
    au BufNewFile,BufRead {*.coffee,*.litcoffee} set filetype=coffee
    NeoBundle 'kchmck/vim-coffee-script', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['coffee']
                \ },
                \}

    " javascript
    NeoBundle 'pangloss/vim-javascript', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \}

    NeoBundle 'bigfish/vim-js-context-coloring', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \ 'build' : {
                \     'unix' : 'npm install',
                \    },
                \}

    NeoBundle 'othree/javascript-libraries-syntax.vim', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript', 'coffee', 'typescript']
                \ },
                \}

    NeoBundle 'heavenshell/vim-jsdoc', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \}

    NeoBundle 'marijnh/tern_for_vim', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \ 'build' : {
                \    'unix' : 'npm install',
                \    'mac' : 'npm install'
                \ },
                \}

    " emmet
    NeoBundle 'mattn/emmet-vim', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript', 'html', 'css']
                \ },
                \}

    " marked
    NeoBundle 'itspriddle/vim-marked', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['markdown', 'ghmarkdown']
                \ },
                \ }

    " marked
    NeoBundle 'gabrielelana/vim-markdown', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['markdown', 'ghmarkdown']
                \ },
                \ }

  call neobundle#end()
  filetype plugin indent on
  NeoBundleCheck

" etc ==========================================================================
  " set encoding
  set encoding=utf-8

  " remap leader key
  let mapleader = ","

  " disable ex
  nnoremap Q <nop>

  " use unix as the standard file type
  set ffs=unix,dos,mac

  " enable system clipboard
  set clipboard=unnamed

  " enable filetype plugins
  filetype plugin on
  filetype indent on

  " set to auto read when a file is changed from the outside
  set autoread

  " enable bg buffers
  set hidden

  " text editor
  set ruler
  set number
  set title
  set backspace=indent,eol,start
  set nostartofline
  set nowrap
  set colorcolumn=80
  set relativenumber
  set nofoldenable

  " whitespace
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set autoindent
  set copyindent
  set pastetoggle=<F2>

  " bind show whitespace
  map <silent> <Leader>ws :set list!<CR>

  " whitespace characters
  " set listchars=trail:␣,tab:⇥ᐧ,nbsp:⍽,eol:¶,extends:▸,precedes:◂
  set list
  set listchars=trail:·,tab:⇥ᐧ

  " remove trailing whitespace
  nnoremap <silent> <Leader>rt :%s/\s\+$//e<CR>

  " switch off current search
  nnoremap <silent> <Leader>h :nohlsearch<CR>

  " bubble single lines
  nmap <S-k> [e
  nmap <S-j> ]e

  " bubble multiple lines
  vmap <S-k> [egv
  vmap <S-j> ]egv

  " close window
  map <silent> <F4> :bw<CR>

  " file explorer
  map <silent> <Leader>kb :Explore<cr>
  let g:netrw_liststyle = 3

  " colors
  syntax enable

  " base16-shell 256 color iTerm2 fix
  let base16colorspace=256

  try
      colorscheme base16-ocean
  catch
  endtry

  set background=dark

  " mouse control
  set mouse=a
  set ttymouse=xterm2

  " fully collapse vertical splits
  set wmh=0

  " search
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

  " ignore compiled files
  set wildignore=*.o,*~,*.pyc
  if has("win16") || has("win32")
      set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
  else
      set wildignore+=.git\*,.hg\*,.svn\*
  endif

  " turn backup off
  set nobackup
  set nowb
  set noswapfile

" syntax specific ==============================================================
  " make
  au FileType make set noexpandtab

  " additional ruby extensions
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru,compass.config} set ft=ruby

  " additional js extensions
  au BufNewFile,BufRead {*.json,.jshintrc,.tern-project} set ft=json

  " additional handlebars extensions
  au BufNewFile,BufRead {*.hbs,*.handlebars} set ft=mustache

" plugin specific ==============================================================
  " easymotion
  let g:EasyMotion_smartcase = 1
  nmap t <Plug>(easymotion-bd-t2)
  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)

  " commentary
  nmap <Leader>/ gcc
  vmap <Leader>/ gc

  " syntastic
  nmap <silent>  :w<CR>:SyntasticCheck<CR>:Errors<CR>
  map <silent> <Leader>l :w<CR>:SyntasticCheck<CR>:Errors<CR>
  let g:syntastic_html_tidy_ignore_errors = [
      \"trimming empty <i>",
      \"trimming empty <span>",
      \"is not recognized",
      \"discarding unexpected",
      \"<input> proprietary attribute \"autocomplete\"",
      \"proprietary attribute \"ng-",
      \"proprietary attribute \"role\"",
      \"proprietary attribute \"hidden\"",
      \]
  let g:syntastic_javascript_jshint_args = '--config ~/.vim/jshintrc'

  " airline
  set laststatus=2
  let g:airline_powerline_fonts = 1
  " let g:airline#extensions#tabline#enabled = 1

  " unite
  call unite#filters#sorter_default#use(['sorter_rank'])
  let g:unite_enable_start_insert=1
  let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden --follow -g ""'
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt=''
  autocmd FileType unite call s:unite_settings()
  autocmd BufLeave \[unite\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif
  function! s:unite_settings()
    let b:SuperTabDisabled=1
  endfunction
  nnoremap <silent> <leader>p :Unite -no-split -buffer-name=files file_rec/async<cr>
  nnoremap <silent> <leader>t :Unite -buffer-name=juggler buffer -quick-match<cr>
  nnoremap <silent> <leader>o :Unite -no-split -buffer-name=outline outline<cr>
  nnoremap <silent> <leader>m :Unite -no-split -buffer-name=marks mark<cr>
  nnoremap <silent> <leader>f :Unite -no-split -auto-preview grep:.<cr>

  " marked
  nnoremap <silent> <Leader>md :MarkedOpen!<CR>

  " local vimrc
  let g:local_vimrc = {'names':['.local-vimrc'],'hash_fun':'LVRHashOfFile'}

  " delimit
  let g:delimitMate_expand_cr = 1

  " json
  let g:vim_json_syntax_conceal = 0

  " fugitive
  nnoremap <Leader>gs :Gstatus<CR>
  nnoremap <Leader>ga :Gcommit --amend -v -q %:p<CR>
  nnoremap <Leader>gc :Gcommit -v -q<CR>
  nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
  nnoremap <Leader>gd :Gdiff<CR>
  nnoremap <Leader>gr :Gread<CR>
  nnoremap <Leader>ge :Gedit<CR>
  nnoremap <Leader>gw :Gwrite<CR><CR>
  nnoremap <Leader>gl :silent! Glog --<CR>:bot copen<CR>:redraw!<CR>
  nnoremap <Leader>gh :silent! Glog -- %<CR>:bot copen<CR>:redraw!<CR>
  nnoremap <Leader>gp :Ggrep<Space>
  nnoremap <Leader>gm :Gmove<Space>
  nnoremap <Leader>gb :Git branch<Space>
  nnoremap <Leader>go :Git checkout<Space>
  nnoremap <Leader>gps :Dispatch! git push<CR>
  nnoremap <Leader>gpl :Dispatch! git pull<CR>

  " youcompleteme
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
  let g:ycm_enable_diagnostic_signs = 0

  " jsdoc
  let g:jsdoc_default_mapping = 0
  let g:jsdoc_allow_input_prompt = 1
  nnoremap <silent> <Leader>jsd :JsDoc<CR>

  " js context
  nnoremap <silent> <Leader>cx :JSContextColorUpdate<CR>:JSContextColorToggle<CR>
  let g:js_context_colors_comment_higroup = 'Comment'
  let g:js_context_colors_insertmode = 0
  let g:js_context_colors_enabled = 0
  let g:js_context_colors_usemaps = 0

  " no arrows
  noremap <Left> :echoe "Use h"<CR>
  noremap <Right> :echoe "Use l"<CR>
  noremap <Up> :echoe "Use k"<CR>
  noremap <Down> :echoe "Use j"<CR>

  " core
  noremap <silent> <leader>w :w<CR>
  noremap <silent> <leader>q :q<CR>
  noremap <silent> <leader>wq :wq<CR>
  noremap <silent> <leader>bd :bd<CR>
  noremap <silent> <leader>bw :bw<CR>
  noremap <silent> <leader>ccl :ccl<CR>

  " easy-align
  vmap <Enter> <Plug>(LiveEasyAlign)

  " slime
  let g:slime_target = "tmux"
  let g:slime_paste_file = tempname()
  let g:slime_default_config = {"socket_name": "default", "target_pane": "1"}

  " ultisnips
  " make ycm compatible with ultisnips (using supertab)
  let g:ycm_key_list_select_completion = ['<c-n>', '<down>']
  let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
  let g:SuperTabDefaultCompletionType = '<C-n>'
  " better key bindings for ultisnipsexpandtrigger
  let g:UltiSnipsExpandTrigger = "<tab>"
  let g:UltiSnipsJumpForwardTrigger = "<tab>"
  let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

  " eclim
  let g:EclimCompletionMethod = 'omnifunc'
  let g:EclimProjectTreeAutoOpen = 1
  nmap <F6> :ProjectTree<CR>


  " tagbar
  let g:tagbar_left = 1
  let g:tagbar_sort = 0
  nmap <F5> :TagbarToggle<CR>
