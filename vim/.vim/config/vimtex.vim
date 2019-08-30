" let g:vimtex_compiler_method = 'tectonic'
let g:vimtex_quickfix_open_on_warning = 0

if has('nvim')
  let g:vimtex_compiler_progname = 'nvr'
endif

" adapted from https://gist.github.com/skulumani/7ea00478c63193a832a6d3f2e661a536
if has('unix')
  if has('mac')
    let g:vimtex_view_method = "skim"
    let g:vimtex_view_general_viewer
            \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
    let g:vimtex_view_general_options = '-r @line @pdf @tex'

    " This adds a callback hook that updates Skim after compilation
    let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
    function! UpdateSkim(status)
      if !a:status | return | endif

      let l:out = b:vimtex.out()
      let l:tex = expand('%:p')
      let l:cmd = [g:vimtex_view_general_viewer, '-r']

      if !empty(system('pgrep Skim'))
        call extend(l:cmd, ['-g'])
      endif

      if has('nvim')
        call jobstart(l:cmd + [line('.'), l:out, l:tex])
      elseif has('job')
        call job_start(l:cmd + [line('.'), l:out, l:tex])
      else
        call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
      endif
    endfunction
  else
    let g:latex_view_general_viewer = "zathura"
    let g:vimtex_view_method = "zathura"
  endif
endif
