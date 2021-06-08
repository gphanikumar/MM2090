#!/bin/bash
i=1;
rm squares.csv
while [ $i -le 1500 ]
do
	echo $i "," $(($i*$i)) "," $(($i*$i*$i)) >> squares.csv;
	i=$(($i+1));
done
