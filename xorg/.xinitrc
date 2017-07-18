[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

setxkbmap -option caps:escape

/usr/bin/dropbox &

exec i3
