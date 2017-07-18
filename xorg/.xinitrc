[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

$HOME/.fehbg &

setxkbmap -option caps:escape

exec i3
