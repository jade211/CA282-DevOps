#!/bin/sh

find ./* -type f ! -name "*.sh"

# instead of ! could use -not ie:(find ./* -type f -not -name "*.sh")
