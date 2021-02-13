#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Wrong arguments"
  exit 1
fi

read pattern

for arg in $*; do
  count=$(grep $pattern $arg | wc -l)
  echo "Matches in ${arg}: ${count}"
done

exit 0
