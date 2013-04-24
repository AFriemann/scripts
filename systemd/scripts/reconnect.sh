
    #!/bin/sh
      case / in
        pre/*)
          exit 0
          ;;
        post/*)
          if ping -c 1 -W 2 www.google.de; then
            exit 0
          else
            exec systemctl restart dhclient@wlp3s0.service
          fi
          ;;
      esac
   
