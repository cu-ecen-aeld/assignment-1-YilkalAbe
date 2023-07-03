#!/bin/sh

if [ ! $# -eq 2 ]
then
    echo "Invalid number of arguments passed."
    exit 1
fi


if [ ! -d $1 ]
then
    echo "The first argument is not a directory."
    exit 1
fi

X=$(grep -E -r -c "*" $1 | wc -l)
Y=$(grep -r -c  $2 $1 | grep -E -v "*.:0" | wc -l) 


echo "The number of files are $X and the number of matching lines are $Y"