#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

cntOne=$(find $1 -maxdepth 1 -type f -name *.out | wc -l)
cntTwo=$(find $2 -maxdepth 1 -type f -name *.out | wc -l)

echo "cntOne:${cntOne}, cntTwo:${cntTwo}"

if [ $cntOne -gt $cntTwo ]; then
  dir="filesFrom$1"
  mkdir $dir
  files=$(find $1 -maxdepth 1 -type f)
  for file in $files; do
    mv $file ${dir}/$1
  done
  echo $dir
fi
exit 0
