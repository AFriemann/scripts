#!/bin/sh

workspaces=

for x in 0..20
do
  part=i3-msg -t get_workspaces | cut -d"{" -f$x
  if $part; then
    break
  fi


done
