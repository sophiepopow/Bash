#!/bin/bash

dir=$( $0 | awk -F'/' '{print $NR}' )

for i in *; do
 if [[ -f $i ]]; then
  echo "file $i"
  
  if [[ -r $i ]]; then
   echo "READ"
  fi

  if [[ -w $i ]]; then
   echo "WRITE"
  fi

  if [[ -x $i ]]; then
   echo "EXEC"
  fi
 fi

 if [[ -d $i ]]; then
  echo "Directory $i"
 fi

done
