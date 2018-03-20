#!/bin/bash
tmpfile=$(mktemp /tmp/sorted.XXXXXX)
cp $1 $tmpfile
scripts/sort.sh $tmpfile
git diff --exit-code $1 $tmpfile
