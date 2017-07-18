command! -nargs=+ Caniuse :terminal caniuse <args>
command! Browser :Start! noglob open -a Google\ Chrome\ Canary
command! BrowserCORS :Start! noglob open -a Google\ Chrome\ Canary --args --allow-file-access-from-files --disable-web-security

command! -nargs=+ Nrun :Start! npm run <args>
command! Ninstall :Dispatch npm prune && npm install
command! Nstart :Start! npm start

command! T :TagbarToggle
