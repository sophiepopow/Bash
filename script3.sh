#!/bin/bash

if [[ $# != 3 ]]; then
 echo "zla liczba arg"
 exit 1
fi

if (( $3 <= 0 )); then
 echo "za maly arg"
 exit 2
fi

if [[ ! (( -f $1 ) && ( -r $1 ) ]]; then
 echo "brak dostepu do folderu"
 exit 3
fi

if [[ ! (( -d $2 ) && ( -w $2 ) ]]; then
 echo "brak dostepu do katalogu"
 exit 4
fi

Plik=$( echo $1 | awk -f'/' '{ print $NF }' )

for (( i = 0; i <= $3; i++ ))
do
 cp $1 $2/$Plik-kopia-$i
done

exit 0
