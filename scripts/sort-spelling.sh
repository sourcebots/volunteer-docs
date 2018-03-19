#!/bin/sh
# Sort the file (and remove duplicates)
sort -u -o .spelling .spelling
# Remove blank lines
sed -i '/^$/d' .spelling
