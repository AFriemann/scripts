#!/bin/bash
# lookup.sh -- created 2013-09-04, Aljosha Friemann
# @Last Change: 24-Dez-2004.
# @Revision:    0.0

string=$@

regex='(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'

if [[ $string =~ $regex ]]
then 
    echo "$string"
else
    echo "uri $string"
fi

exit 0

# vi: 
