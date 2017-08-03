# Load .Xdefaults
[[ -f $HOME/.Xresources ]] && xrdb -merge ~/.Xresources

# Set background
$HOME/.fehbg &

# Set numlock on at login
setxkbmap -option caps:escape

# Start wm
exec i3
