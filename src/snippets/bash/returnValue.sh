#!/bin/sh

function returnsOne {
  return 1 
}

function returnsZero {
  return 0
}

function main {
  if returnsOne; then
    echo "1 is false"
  fi

  if returnsZero; then
    echo "0 is true"
  fi
}

main
