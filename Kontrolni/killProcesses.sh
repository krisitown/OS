#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Wrong number of arguments"
  exit 1
fi

result=$(ps -e -o uid,pid,rss)
cnt=1
rssSum=0
for res in $result; do
  if [ $(( cnt % 3 )) -eq 0 ] && [ $cnt -gt 3 ]; then
    echo "In da loop"
    rssSum=$(( rssSum += $res ))
  fi
  cnt=$(( cnt += 1 ))
done

echo $cnt
echo $rssSum
