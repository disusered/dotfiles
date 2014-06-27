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
    " dispatch
    NeoBundle 'tpope/vim-dispatch'
    " syntastic
    NeoBundle 'scrooloose/syntastic'
    " surround
    NeoBundle 'tpope/vim-surround'
    " speeddating
    NeoBundle 'tpope/vim-speeddating'
    " commentary
    NeoBundle 'tpope/vim-commentary'
    " eunuch
    NeoBundle 'tpope/vim-eunuch'
    " unimpaired
    NeoBundle 'tpope/vim-unimpaired'
    " tabular
    NeoBundle 'godlygeek/tabular'
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
    " tmuxline
    NeoBundle 'edkolev/tmuxline.vim'
    " delimitor
    NeoBundle 'Raimondi/delimitMate'
    " local vimrc
    NeoBundle 'MarcWeber/vim-addon-local-vimrc'
    " json
    NeoBundle 'elzr/vim-json'
    " autocomplete
    NeoBundle 'Valloric/YouCompleteMe', {
                \ 'build' : {
                \    'unix' : './install.sh --clang-completer --omnisharp-completer',
                \    'mac' : './install.sh --clang-completer'
                \ },
                \ }
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
    NeoBundle 'jelera/vim-javascript-syntax', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \}

    NeoBundle 'pangloss/vim-javascript', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript']
                \ },
                \}

    NeoBundle 'othree/javascript-libraries-syntax.vim', {
                \ 'lazy' : 1,
                \ 'autoload': {
                \   'filetypes': ['javascript', 'coffee', 'typescript']
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

    " js beautify
    NeoBundle 'maksimr/vim-jsbeautify', {
                \ 'lazy' : 1,
                \ 'depends': 'einars/js-beautify',
                \ 'autoload': {
                \   'filetypes': ['javascript', 'html', 'css']
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
  map <silent>  :nohlsearch<CR>
  nnoremap <silent> <Leader>h :nohlsearch<CR>

  " arrow keys
  " insert mode, ctrl+v, shortcut
  map OA <Up>
  map OB <Down>
  map OC <Right>
  map OD <Left>

  map [1;2A <S-Up>
  map [1;2B <S-Down>
  map [1;2C <S-Right>
  map [1;2D <S-Left>

  map [1;5A <C-Up>
  map [1;5B <C-Down>
  map [1;5C <C-Right>
  map [1;5D <C-Left>

  " bubble single lines
  nmap <S-Up> [e
  nmap <S-Down> ]e

  " bubble multiple lines
  vmap <S-Up> [egv
  vmap <S-Down> ]egv

  " location
  map <C-Up> [l
  map <C-Down> ]l

  " close window
  map <silent> <F4> :q<CR>

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

" plugin specific ==============================================================
  " easymotion
  let g:EasyMotion_smartcase = 1
  nmap t <Plug>(easymotion-bd-t2)
  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)

  " commentary
  nmap  gcc
  vmap  gcc
  nmap <Leader>/ gcc
  vmap <Leader>/ gc

  " tabular
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>

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
  function s:find_jshintrc(dir)
    let l:found = globpath(a:dir, '.jshintrc')
    if filereadable(l:found)
      return l:found
    endif
    let l:parent = fnamemodify(a:dir, ':h')
    if l:parent != a:dir
      return s:find_jshintrc(l:parent)
    endif
    return "~/.vim/jshintrc"
  endfunction
  function UpdateJsHintConf()
    let l:dir = expand('%:p:h')
    let l:jshintrc = s:find_jshintrc(l:dir)
    let g:syntastic_javascript_jshint_conf = l:jshintrc
  endfunction

  au BufEnter * call UpdateJsHintConf()

  " airline
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#enabled = 1

  " beautify
  vmap <silent> <Leader>fj :call RangeJsBeautify()<CR>
  vmap <silent> <Leader>fh :call RangeHtmlBeautify()<CR>
  vmap <silent> <Leader>fc :call RangeCSSBeautify()<CR>

  " unite
  call unite#filters#sorter_default#use(['sorter_rank'])
  let g:unite_enable_start_insert=1
  let g:unite_source_rec_async_command = 'ag --nocolor --nogroup --hidden -g ""'
  let g:unite_source_file_rec_ignore_pattern=
   \'\%(^\|/\)\.$\|\~$\|\.\%(o\|exe\|dll\|ba\?k\|sw[po]\|tmp\)$\|\%(^\|/\)\.
   \\%(hg\|git\|bzr\|svn\)\%($\|/\)\|node_modules\|platforms\|plugins'
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup --hidden'
  let g:unite_source_grep_recursive_opt=''
  autocmd FileType unite call s:unite_settings()
  autocmd BufLeave \[unite\]* if "nofile" ==# &buftype | setlocal bufhidden=wipe | endif
  function! s:unite_settings()
    let b:SuperTabDisabled=1
  endfunction
  nnoremap <silent>  :Unite -no-split -buffer-name=files file_rec/async<cr>
  nnoremap <silent>  :Unite -no-split -buffer-name=buffers buffer<cr>
  nnoremap <silent>  :Unite -no-split -auto-preview -buffer-name=outline outline<cr>
  nnoremap <silent>  :Unite -no-split -auto-preview grep:.<cr>
  nnoremap <silent>  :Unite -no-split -auto-preview -buffer-name=marks mark<cr>

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
  nnoremap <Leader>gc :Gcommit -v -q<CR>
  nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
  nnoremap <Leader>gd :Gdiff<CR>
  nnoremap <Leader>gr :Gread<CR>
  nnoremap <Leader>gw :Gwrite<CR><CR>
  nnoremap <Leader>gl :silent! Glog<CR>:bot copen<CR>
  nnoremap <Leader>gp :Ggrep<Space>
  nnoremap <Leader>gm :Gmove<Space>
  nnoremap <Leader>gb :Git branch<Space>
  nnoremap <Leader>go :Git checkout<Space>
  nnoremap <Leader>gps :Dispatch! git push<CR>
  nnoremap <Leader>gpl :Dispatch! git pull<CR>
