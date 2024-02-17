#!/bin/sh

run() {
  if ! pgrep -f "$1" ;
  then
    "$@"&
  fi
}

#run "bash ~/.config/polybar/launch.sh"
run "picom"
#run "nitrogen --restore"

