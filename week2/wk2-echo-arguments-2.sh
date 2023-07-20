#!/bin/sh

nums=1

for command in "$@"
do
    echo "$nums. $command"
    nums=$((nums+1))  # how to increment variables
done
