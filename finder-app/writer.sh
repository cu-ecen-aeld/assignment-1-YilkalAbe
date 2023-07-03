#!/bin/sh

if [ ! $# -eq 2 ]
then
    echo "Invalid request count $#"
    exit 1
fi

dirNameForRequest=$(dirname $1)

if [ ! -e $dirNameForRequest ]
then
    #The directory path doesn't exist.
    mkdir -p $dirNameForRequest
fi

echo $2 > $1