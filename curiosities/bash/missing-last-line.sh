#!/bin/bash

unset line

while read line || [ -n "$line" ]; do
  echo "$line"
done < "$1"
