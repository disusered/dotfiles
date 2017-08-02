# Start X
case $(uname) in
  'Linux')
    if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
      exec startx
    fi
  ;;
esac

# Set path
source $HOME/.config/zsh/zshpath
