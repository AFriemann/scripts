#!/bin/bash

# to make sure all words are contained in loop, check for not-zero in while condition:
while read -d' ' word || [ -n "$word" ]; do
  echo "$word"
done
