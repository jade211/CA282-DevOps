#!/bin/sh

nums=$1

mkdir $( seq -f "dir.%06g" $nums )

# "%06f" will give 5 0's at the end
# "%06g" will give 5 0's at the start
