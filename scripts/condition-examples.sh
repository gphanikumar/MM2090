#!/bin/bash
for i in {2..20}
do
	echo $i
	if [ $i -le 3 ] || [ $i -ge 7 ] 
	then
		echo $i is out of range
	fi
	if [ $i -gt 3 ] && [ $i -lt 7 ] 
	then
		echo $i is in the range
	fi
done
