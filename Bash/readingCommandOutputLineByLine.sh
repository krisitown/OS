#!/bin/bash

while read line; do
  echo $line
done < cat /etc/passwd | sort