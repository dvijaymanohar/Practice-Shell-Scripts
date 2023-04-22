#!/bin/bash

# destdir=$(dirname "$2")
#
# for file in $srcdir; do
#   echo $srcdir
#   echo $destdir
#
#   # echo "Processing $file file..."
#   #cat $file > $destdir/$file
# done


for file in [-d "$1"]; do
  echo "Processing $file file..."
  #cat $file > $destdir/$file
done
