#!/bin/bash

BAR=0

foo() {
  for a in $@; do
    BAR=$((BAR + 1))
    echo "$a"
  done
}

foo 1 2 3 4 5 6

echo "total: $BAR"
# -> 6

foo 1 2 3 4 5 6

echo "total: $BAR"
# -> 12

foo 1 2 3 4 5 6 |  sort -h

echo "total: $BAR"
# -> 12
