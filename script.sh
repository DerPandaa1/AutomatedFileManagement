#!/bin/bash
boolvar=`cat automatedMode`
if [[ $boolvar -eq 1 ]]; then
  echo 1
  for filename in `find ~/Downloads/ -type f -mtime -1`
  do 
    echo "$filename"
  done
else
  echo 0
fi
