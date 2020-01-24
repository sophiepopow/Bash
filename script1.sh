#!/bin/bash
	
trap 'cal ; exit 0' SIGINT

user=$( who | cut -f 1 -d " " )

while [[ 1 ]]; do
	for i in $user; do
		number=$(ps aux | cut -f 1 -d " " | grep $i | wc -l)
		echo "$i: $number"
		done
	sleep 2
done
	
