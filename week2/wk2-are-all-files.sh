#!/bin/sh

set -e

for files in "$@"
do
    test -f "$files"
done
