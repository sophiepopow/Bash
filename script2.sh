#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "wrong number of arguments"
	exit 0;
fi

for i in $*; do
	number=$( find $i - type f | wc -l )
	echo "$i: $number"
done
