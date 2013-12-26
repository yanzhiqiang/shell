#!/bin/sh

filename=$1
echo $filename
#if [ ! -f "$filename" ]
#then
#   echo "File $filename not found!" >&2
#else
#  echo "$filename found" >&2
#fi

#if [ ${filename##*.} != "gz" ]
#then 
#    echo "File $1 is not a gzipped file!"
#fi 

exit $?
