#!/bin/sh

while !(ping -c 1 -W 2 www.google.de); do
  echo "computer offline" 
  sleep 3
done

echo "computer online"
exit 0
