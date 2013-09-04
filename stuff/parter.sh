#!/bin/bash
# parter.sh -- created 2013-07-06, Aljosha Friemann
# @Last Change: 24-Dez-2004.
# @Revision:    0.0

source=$1
destination=$2
counter=0
start=$3
amount=$4

# TODO wtf is this shit?

if [ $start -gt $0 ]; then
  for f in $source/*; do
    if [ $counter -ge $start ]; then
      cp $f $destination
    fi
    let counter=$counter+1
  done
  exit 0
fi

for f in $source/*; do
  if [ $counter -le $amount ]; then
    cp $f $destination
    let counter=$counter+1
  fi
done

exit 0

# vi: 
