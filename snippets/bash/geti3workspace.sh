#!/bin/sh

workspaces=

# TODO split i3-msg call into workspaces and find the one that is focused. Why?
# no idea!

for x in 0..20
do
  part=i3-msg -t get_workspaces | cut -d"{" -f$x
  if $part; then
    break
  fi


done
