command! -nargs=+ Caniuse :terminal caniuse <args>
command! -nargs=+ Trun :Start! npm run <args>
command! Tstart :Start! npm start
command! Browser :Start! noglob open -a Google\ Chrome\ Canary --args --allow-file-access-from-files --disable-web-security
