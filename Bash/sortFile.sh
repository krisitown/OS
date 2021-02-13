#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Wrong number of args"
  exit 1
fi

(cat $1 | sort) > temp_sorted_file
mv temp_sorted_file $1
exit 0
