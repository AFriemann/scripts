#! /bin/sh

# As above, do what's needed to activate
export VIRTUAL_ENV="/home/mike/var/virtualenvs/myvirtualenv"
export PATH="$VIRTUAL_ENV/bin:$PATH"
unset PYTHON_HOME

# If the first argument is -s or -c, do what ssh-agent does
if [ "$1" = "-s" ]; then
  cat <<-DONE
        export VIRTUAL_ENV="$VIRTUAL_ENV";
        export PATH="$PATH";
        unset PYTHON_HOME;
DONE
elif [ "$1" = "-c" ]; then
  cat <<-DONE
        setenv VIRTUAL_ENV "$VIRTUAL_ENV";
        setenv PATH "$PATH";
        unset PYTHON_HOME;
DONE

# Otherwise, launch a shell or subcommand
else
  exec "${@:-$SHELL}"
fi
