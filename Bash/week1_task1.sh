#!/bin/bash

files=($( find /etc -maxdepth 1))
echo $files
for x in $files
do
  if [ -d $x ]; then
    fileInDir=($( find $x -maxdepth 1 -type f ))
    for y in $fileInDir
    do
      if [ -f $y ]; then
        echo $y
      fi
    done
  else
     echo $x
  fi
done
