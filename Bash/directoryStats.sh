#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

fileNum=$(find $1 -maxdepth 1 -type f | wc -w)
dirNum=$(find $1 -maxdepth 1 -type d | wc -w)

echo "Directories: ${dirNum}, files: ${fileNum}"
