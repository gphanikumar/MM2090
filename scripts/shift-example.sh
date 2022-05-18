#!/bin/bash
# run this script with two or more arguments 
echo Number of arguments :
echo $#
i=1
while [ -n "$1" ]
do
	echo argument $i is $1
	shift
	(( i++ ))
done
echo Number of arguments now:
echo $#
