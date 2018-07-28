function! LanguageClient(info)
  if a:info.status == 'installed' || a:info.force
    !bash install.sh
    !go get -u github.com/sourcegraph/go-langserver
    !pip install --user --upgrade typing python-language-server pyls-isort
    !npm install -g vscode-json-languageserver-bin javascript-typescript-langserver vscode-css-languageserver-bin vscode-html-languageserver-bin flow-language-server ocaml-language-server reason-cli@3.2.0-darwin
    !luarocks --local install https://raw.githubusercontent.com/Alloyed/lua-lsp/master/lua-lsp-scm-1.rockspec
    !gem install language_server
    :UpdateRemotePlugins
  endif
endfunction

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': function('LanguageClient')
    \ }
