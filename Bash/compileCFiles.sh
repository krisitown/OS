#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

files=$(find $1 -maxdepth 1 -name *.c -type f)
for file in $files; do
  cc $file -o "${file//.c/.exe}" &
done
