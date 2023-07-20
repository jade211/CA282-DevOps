#!/bin/sh

nums=$1

for num in $( seq $nums )
do
    mkdir "dir.$num"
done
