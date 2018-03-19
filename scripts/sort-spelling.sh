#!/bin/sh
spelling_file=.spelling
# Sort the file (and remove duplicates) (and sort numbering properly)
sort -u -n -o $spelling_file $spelling_file
# Remove blank lines
sed -i '/^$/d' $spelling_file
