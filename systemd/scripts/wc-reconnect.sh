#!/bin/sh

function testConn {
  while true; do
    echo "Hi, I'm your wconnect-reconnect script and I'm still running!"
    wconnect
    sleep 10
  done
}

# runs when out of sleep
#case / in
  #pre/*)
    #exit 0
    #;;
  #post/*)
    #tries=0
    #
    #while !(ping -c 1 -W 2 www.google.de); do
      #if [ tries -gt 3 ]; then
        #echo "Connection could not be established, see logs for more!"
        #exit 1
      #else
        #wconnect
      #fi
#
      #let tries=tries+1 
    #done
#
    #echo "Reconnect successful or connection already established!"
    #exit 0
    #;;
#esac

#runs otherwise
testConn &
