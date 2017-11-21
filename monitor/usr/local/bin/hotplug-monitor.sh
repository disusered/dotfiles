#!/bin/bash

set -o pipefail

export DISPLAY=:0.0
export XAUTHORITY=/home/carlos/.Xauthority

function connect(){
   logger -t udev "$1 connected"
   xrandr --output "$1" --auto --right-of LVDS-1
}

function disconnect(){
   logger -t udev "$1 disconnected"
   xrandr --output "$1" --off
}


if [[ $(xrandr | grep "VGA-[0-9] connected") ]]; then
  connect "VGA-2"
else
  disconnect "VGA-2"
fi
