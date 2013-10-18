#!/bin/bash
# finder.sh -- created 2013-09-18, Aljosha Friemann
# @Last Change: 24-Dez-2004.
# @Revision:    0.0

pushd ~ &>/dev/null
outp=$(find -maxdepth 1 -name "*.war")
popd &>/dev/null

count=0
for file in $outp; 
do
  count=$(($count+1))
done

if [ $count -gt 1 ]; then
  exit 1
elif [ $count -lt 1 ]; then
  exit 1
fi

echo $(basename $outp)
exit 0

# vi: 
