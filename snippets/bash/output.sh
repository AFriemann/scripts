#!/bin/sh
# -*- coding: utf-8 -*-
# output.sh
# created: 2016-12-29
# author: Aljosha Friemann a.friemann@patagona.de

output() { echo -e "${TIMESTAMP:+[$(date -Iseconds)] }$0: $@"; }

red() { output "\033[0;31m$@\033[0m"; }
green() { output "\033[0;32m$@\033[0m"; }
yellow() { output "\033[0;33m$@\033[0m"; }

verbose() { [ "$VERBOSE" ] && output "$@"; }
info() { output "$@"; }
warning() { yellow "$@"; }
error() { red "$@"; }
success() { green "$@"; }

abort() { error "$@" && exit 1; }

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4 fenc=utf-8
