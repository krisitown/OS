#!/bin/bash

if [ $# -eq 0 ] && [ $# -gt 2 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

if [ ! -d $1 ]; then
  echo "First argument is not a directory"
  exit 2
fi

symlinks=$(find -maxdepth 1 -type s)
count=0
for symlink in $symlinks; do
  if [ -e "$1/${symlink}" ]; then
    destination=$(readlink $symlink)
    echo "$1/${symlink} -> ${destination}"
  else
    count=$(( count + 1 ))
  fi
done

echo "${count} symlinks don't have a destination"
exit 0
