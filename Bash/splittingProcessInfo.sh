#!/bin/bash

IFS=$'\n'

processes=$(ps -e -o pid,uid,rss | tail -n +2)
for proc in $processes; do
  echo $proc
  line=$(echo $proc | sed s/[ ]+/ /)
  uid=$(echo $line | cut -d ' ' -f2)
  echo $uid
done
unset IFS
