#!/bin/bash

lines=$(cat /etc/passwd)
users=()
for line in $lines; do
  echo $(cut -d ":" -f5 << $line)
done

