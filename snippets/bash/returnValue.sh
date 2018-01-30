#!/bin/sh

returnsOne () {
  return 1
}

returnsZero () {
  return 0
}

main () {
  if returnsOne; then
    echo "1 is false"
  fi

  if returnsZero; then
    echo "0 is true"
  fi
}

main
