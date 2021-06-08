#!/bin/bash

n=$1
echo -n "" > "oscillator.txt"
for (( i = 0; i<=n; i++))
do
	#echo $i #(uncomment this line to debug)
	y=`echo "$i $2" | awk '{ print(exp(-1*$1/$2)*sin($1)); }'`
	echo "$i,$y" >> "oscillator.txt"

done
