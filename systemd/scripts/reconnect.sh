
    #!/bin/sh
      case / in
        pre/*)
          exit 0
          ;;
        post/*)
          if ping -c 1 -W 2 www.google.de; then
            exit 0
          else
            exec /usr/sbin/dhclient -v wlp3s0
          fi
          ;;
      esac
   
