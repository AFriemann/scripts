#!/bin/bash

_red() { echo -e "\033[0;31m$*\033[0m"; }
_green() { echo -e "\033[0;32m$*\033[0m"; }
_yellow() { echo -e "\033[0;33m$*\033[0m"; }

_exists() {
    compgen -A function | grep "^$1$" &>/dev/null
}

help() {
    # HELP: print usage information (optional [<command>])
    (( $# > 0 )) && {
        _exists "$1" || {
            _red "uknown command: $1" && exit 1
        }

        type "$@"
        return $?
    }

    _yellow "USAGE:"
    _green "$(basename "$0") COMMAND [ARGS]"
    echo
    _yellow "COMMANDS:"

    local function_re='(^[a-z]+)\(\) \{$'
    local help_re='^[[:space:]]*#[[:space:]]*HELP:[[:space:]]*(.+)$'
    local args_re='<[a-z]+>'

    local function args description

    while read -r
    do
        if [[ $REPLY =~ $function_re ]]; then
            function="${BASH_REMATCH[1]}"
        elif [[ -n "$function" ]] && [[ $REPLY =~ $help_re ]]; then
            description="${BASH_REMATCH[1]}"

            if [[ $description =~ $args_re ]]; then
                args=$(echo "$description" | grep -Eo "\[?<[a-z]+>\]?" | tr -d '<>' | tr '\n' ' ' | awk '{$1=$1};1')
            fi

            _green "$function${args:+\t${args^^}}"
            echo -e "\t$description"
            unset function args description
        fi
    done < "$0"
}

if [ "${BASH_SOURCE[0]}" == "$0" ]
then
    _exists "$1" || {
        _red "uknown command: $1" && exit 1
    }

    # shellcheck disable=SC2068
    ${@:-help}
fi
