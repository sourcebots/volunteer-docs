#!/bin/sh
# Sort the file (and remove duplicates)
LC_COLLATE=C sort -u -o $1 $1
# Remove blank lines
sed -i '/^$/d' $1
