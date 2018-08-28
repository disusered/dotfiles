" \ 'javascript': ['flow-language-server', '--stdio'],
" \ 'javascript.jsx': ['flow-language-server', '--stdio'],

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio'],
  \ 'javascript.jsx': ['javascript-typescript-stdio'],
  \ 'typescript': ['javascript-typescript-stdio'],
  \ 'python': ['pyls'],
  \ 'css': ['css-languageserver', '--stdio'],
  \ 'scss': ['css-languageserver', '--stdio'],
  \ 'less': ['css-languageserver', '--stdio'],
  \ 'html': ['html-languageserver', '--stdio'],
  \ 'json': ['json-languageserver', '--stdio'],
  \ 'lua': ['lua-lsp'],
  \ 'ruby': ['language_server-ruby'],
  \ 'reason': ['ocaml-language-server', '--stdio'],
  \ 'ocaml': ['ocaml-language-server', '--stdio'],
  \ 'go': ['go-langserver'],
  \ }

set omnifunc=LanguageClient#complete
" set formatexpr=LanguageClient_textDocument_rangeFormatting()

let g:LanguageClient_autoStart = 1
let g:LanguageClient_selectionUI = 'fzf'
let g:LanguageClient_diagnosticsList = 'location'

nnoremap <silent> <Leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>

let g:LanguageClient_diagnosticsDisplay = {
  \   1: {
  \       "name": "Error",
  \       "texthl": "ErrorMsg",
  \       "signText": "✕",
  \       "signTexthl": "ErrorMsg"
  \   },
  \   2: {
  \       "name": "Warning",
  \       "texthl": "WarningMsg",
  \       "signText": "▵",
  \       "signTexthl": "WarningMsg"
  \   },
  \   3: {
  \       "name": "Information",
  \       "texthl": "LanguageClientInformation",
  \       "signText": "i",
  \       "signTexthl": "SignInformation"
  \   },
  \   4: {
  \       "name": "Hint",
  \       "texthl": "LanguageClientHint",
  \       "signText": ".",
  \       "signTexthl": "SignHint"
  \   }
  \ }
