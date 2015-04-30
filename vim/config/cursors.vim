if empty($WINDOWID) ""
  if empty($TMUX)
    " iterm2
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  else
    " iterm2 + tmux
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
else
  " urxvt
  let &t_SI = "\033]12;#b5bd68\007"
  let &t_EI = "\033]12;#969896\007"
endif
