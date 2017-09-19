#!/usr/bin/env bash

# shows script usage and exits with exit-code 1
function show_usage() {
    [[ ! -z "${1}" ]] && echo ${1} >&2
    echo "usage: $(basename $0) <string>" >&2
    exit 1
}

# converts given string to a slug
function make_slug() {
    STR=${1}
    STR=${STR//: /-}
    STR=${STR//\//-}
    STR=${STR//:/-}
    STR=${STR//\\/-}
    STR=${STR// /-}
    STR=${STR//./-}
    echo -n ${STR}
}

# create a tag with the branch version
STR="${1}"
[[ -z "${STR}" ]] && show_usage "missing string parameter"
echo -n "$(make_slug "${STR}")" | tr '[:upper:]' '[:lower:]'
