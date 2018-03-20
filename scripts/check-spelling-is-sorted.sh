#!/bin/bash
tmpfile=sortedchecktmpfile.tmp
cp $1 $tmpfile
scripts/sort.sh $tmpfile
if diff -C3 $1 $tmpfile; then
    echo "$1 file is fine"
else
    echo "$1 file is not sorted!"
    echo "Please run 'scripts/sort.sh $1' to automatically fix it!"
    exit 1
fi
rm $tmpfile
exit 0
