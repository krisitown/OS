#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Wrong number of arguments"
fi

if [ -d $1 ]; then
  symlinks=$(find $1 -maxdepth 1 -type l)
  for symlink in $symlinks; do
    result=$(readlink -e $symlink)
    if [ -z $result ]; then
      echo $symlink
    fi
  done
fi

