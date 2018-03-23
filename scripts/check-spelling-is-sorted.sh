#!/bin/sh
if sort --check --unique $1; then
    echo "$1 file is correctly sorted"
    exit 0
else
    echo "$1 file is not sorted!"
    echo "Please run 'scripts/sort.sh $1' to automatically fix it!"
    exit 1
fi

