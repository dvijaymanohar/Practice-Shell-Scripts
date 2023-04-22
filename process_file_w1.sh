#!/bin/bash

SRC_FILES="/usr2/vdogipar/src/cpu/*.*"
DEST_FILES="/usr2/vdogipar/src/test"

for file in $SRC_FILES; do
  #echo "Processing $file file..."

  #cat "$file"
  filename="${file##*/}"
  echo $filename

  cat $file > ${DEST_FILES}/${filename}
  #cat '$file'

done
