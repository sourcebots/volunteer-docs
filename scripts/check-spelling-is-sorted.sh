#!/bin/bash
tmpfile=$(mktemp /tmp/sorted.XXXXXXX)
cp $1 $tmpfile
scripts/sort.sh $tmpfile
if diff -C3 $1 $tmpfile; then
    rm $tmpfile
    echo "$1 file is correctly sorted"
    exit 0
else
    rm $tmpfile
    echo "$1 file is not sorted!"
    echo "Please run 'scripts/sort.sh $1' to automatically fix it!"
    exit 1
fi
