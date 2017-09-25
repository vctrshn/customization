#!/bin/bash
if [ "$#" -eq 1 ]; then #f filename
  find . -iwholename "*$1*"
elif [ "$#" -eq 2 ]; then #f file vim
  find . -iwholename "*$1*" -exec $2 \;
else
  echo "Illegal number of arguments"
fi
