[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

$HOME/.fehbg &

setxkbmap -option caps:escape

/usr/bin/dropbox &

exec i3
