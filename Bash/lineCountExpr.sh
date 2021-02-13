#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

count=$(grep "$2" $1 | wc -l)
echo "${count} lines contain $2"
exit 0
