#!/bin/sh

word1=$1
word2=$2

if [ "$word1" = "$word2" ]
then
    echo "the same"
else
    echo "different"
fi
