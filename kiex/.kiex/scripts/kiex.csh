set KIEX_HOME="$HOME/.kiex"
setenv PATH "$KIEX_HOME/bin:$PATH"

if ( -f $KIEX_HOME/elixirs/.default.csh ) then
  source $KIEX_HOME/elixirs/.default.csh
endif
