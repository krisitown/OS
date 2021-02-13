#!/bin/bash

read file
chars=$(wc -c $file | cut -d ' ' -f1)
words=$(wc -w $file | cut -d ' ' -f1)
lines=$(wc -l $file | cut -d ' ' -f1)

echo "Average characters per line: $((chars/lines))"
