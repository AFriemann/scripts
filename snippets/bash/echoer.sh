#!/bin/bash
# echoer.sh -- created 2013-09-18, Aljosha Friemann
# @Last Change: 24-Dez-2004.
# @Revision:    0.0

outp=$(ping -c 1 lalalala.org.c)
ret=$?

if [[ $outp =~ "wakfoo" ]]; then
  echo $outp
fi

echo "exit code was $ret"

# vi: 
