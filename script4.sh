#!/bin/bash

trap 'echo "koncze skrypt"; exit 0' SIGINT

while [[ 1 ]]
do
 nproc=$( echo ps --no-headers -e | wc -l )
 echo "liczba procesow to: $nproc"
 sleep 3
done

exit 0
