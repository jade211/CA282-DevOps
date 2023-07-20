#!/bin/sh

set -e

for files in "$@"
do
    if test -f "$files"
    then
        echo "$files" "file"

    elif test -d "$files"
    then
        echo "$files" "directory"

    else
        echo "$files" "does not exist"
    fi
done
