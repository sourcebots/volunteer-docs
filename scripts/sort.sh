#!/bin/sh
# Sort the file (and remove duplicates)
sort -u -o $1 $1
# Remove blank lines
sed -i '/^$/d' $1
