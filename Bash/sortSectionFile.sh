#!/bin/bash

if [ $# -ne 3 ]; then
  echo "Wrong number of arguments"
fi
lines=()
counter=0
for line in $1; do
  if [ $counter -gt $2 ] && [ $counter -le $3 ]; then
    $(($lines += $line))
  fi
  $((counter += 1))
done
touch tempFile
$lines | sort > tempFile
mv tempFile $1
