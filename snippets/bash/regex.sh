#!/bin/sh

testText1="str1ng.omg"
testText2="Str1ng.mg"
regex1=[a-zA-Z0-9]+\.o*mg


match () {
  echo "trying to match $1 with regular expression $regex1"
  if [[ "$1" =~ $regex1 ]]; then
    echo "matched successfully"
    return 0
  fi

  echo "could not match successfully"
  return 1
}

match $testText1

match $testText2

exit 0
