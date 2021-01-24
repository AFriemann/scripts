#!/bin/bash

shopt -s lastpipe && read password
pass $@ "$password"
