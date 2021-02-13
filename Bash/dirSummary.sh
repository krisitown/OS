#!/bin/bash

read dir
if [ -d $dir ]; then
  fileCnt=$(find $dir -maxdepth 1 -type f | wc -l)
  dirCnt=$(find $dir -maxdepth 1 -type d | wc -l)
  echo "There are ${fileCnt} files and ${dirCnt} directories in ${dir}"
else
  echo "Not a directory"
fi
