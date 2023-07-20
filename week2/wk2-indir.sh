#!/bin/sh

dir_name=$1
shift

cd "$dir_name"
exec "$@"
