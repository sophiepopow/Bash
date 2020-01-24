#!/bin/bash

if [[ $# - eq 0 ]]; then
	echo "wrong number of arguments"
	exit 1
fi

dir=""
if [[ -d $1 ]]; then
	if [[ ! -w $1 ]]; then
		echo "no access to directory"
		exit 2
	fi
	dir=$1
	shift
elif [[ -f $1 ]]; then
	dir=.
fi

while [[ $1 ]]; do
	file=$( $1 | awk -F'/' '{ print $NF }' )
	if [[ (( ! -f $dir/$file ) || ( -d $dir/$file )) && ( -r $1 ) ]]; then
		cp $1 $dir/
	fi
	shift
done
