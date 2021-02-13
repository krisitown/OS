#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

files1=$(find $1 -name *.c -maxdepth 1 -type f)
files2=$(find $2 -name *.c -maxdepth 1 -type f)
count1=$(echo $files1 | wc -w)
count2=$(echo $files2 | wc -w)

if [ $(($count1 + $count2)) -gt 20 ]; then
  touch names.txt
  echo "$files1" > names.txt
  echo "$files2" >> names.txt
fi

chmod 0444 names.txt
exit 0
