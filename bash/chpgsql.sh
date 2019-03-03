#! /bin/bash

set -E -o pipefail
IFS=$'\n\t'

# _handle_error() { echo "-ERROR-"; }
#
# trap _handle_error ERR

unset PGSQL_AUTO_VERSION

POSTIES=("$HOME"/.posties/*)

chpgsql_use() {
    [[ -n "$PGSQL_ROOT" ]] && chpgsql_reset

    export PGSQL_ROOT="$1"
    export PGSQLOPT="$2"
    export PATH="$PGSQL_ROOT/bin:$PATH"
}

chpgsql_reset() {
    [[ -z "$PGSQL_ROOT" ]] && return

    PATH=":$PATH:"
    PATH="${PATH//:$PGSQL_ROOT\/bin:/:}"

    PATH="${PATH#:}"
    PATH="${PATH%:}"
    unset PGSQL_ROOT PGSQL_VERSION
    hash -r
}

chpgsql() {
    case "$1" in
    system) chpgsql_reset ;;
    *)
        local dir match

        for dir in "${POSTIES[@]}"; do
            dir="${dir%%/}"
            case "${dir##*/}" in
            "$1") match="$dir" && break ;;
            *"$1"*) match="$dir" ;;
            esac
        done

        if [[ -z "$match" ]]; then
            echo "chpgsql: unknown postgresql: $1" >&2
            return 1
        fi

        shift
        chpgsql_use "$match" "$*"
        ;;
    esac
}

chpgsql_auto() {
    local dir="$PWD/" version

    until [[ -z "$dir" ]]; do
        dir="${dir%/*}"

        if { read -r version <"$dir/.pgsql-version"; } 2>/dev/null || [[ -n "$version" ]]; then
            if [[ "$version" == "$PGSQL_AUTO_VERSION" ]]; then
                return
            else
                PGSQL_AUTO_VERSION="$version"
                chpgsql "$version"
                return $?
            fi
        fi
    done

    if [[ -n "$PGSQL_AUTO_VERSION" ]]; then
        chpgsql_reset
        unset PGSQL_AUTO_VERSION
    fi
}

trap '[[ "$BASH_COMMAND" != "$PROMPT_COMMAND" ]] && chpgsql_auto' DEBUG

# vim: fenc=utf-8:ts=4:sw=4:expandtab
