#!/bin/sh

x=4

case $x in
  1)
    echo "1"
    ;;
  2)
    echo "2"
    ;;
  "$x >= 3")
    echo "bigger or equal to 3"
    ;;
esac

exit 0
