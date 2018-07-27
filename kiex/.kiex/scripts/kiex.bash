KIEX_HOME="$HOME/.kiex"
export PATH=$KIEX_HOME/bin:$PATH
[[ -f $KIEX_HOME/elixirs/.default ]] && source $KIEX_HOME/elixirs/.default

function kiex() {
  if [ "$1" = "use" ] ; then
    #eval "$($HOME/.kiex/bin/kiex $*|grep source)"
    source_line="$(USERSHELL=notcsh $HOME/.kiex/bin/kiex $*|grep source)"
    if [ -z "$source_line" ] ; then
      echo "Failed to $*"
      return 1
    else
      eval "$source_line"
      shift
      echo "Using $*"
    fi
  else
    $HOME/.kiex/bin/kiex $*
  fi
}
