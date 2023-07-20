#!/bin/sh

while read files
do
    test -d "$files" && echo $files && break
done
