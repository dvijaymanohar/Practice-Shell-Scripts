#!/bin/bash

#SRC_FILES="$1/*.*"
SRC_FILES="$1/*"
DEST_FILES=$2

for file in $SRC_FILES; do
  filename="${file##*/}"
  echo $filename
  cat $file > ${DEST_FILES}/${filename}
done
