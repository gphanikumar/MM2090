#!/bin/bash
c="$(cowsay -l|tail -n +2|wc -w)"
#echo $c

x="$(cowsay -l|tail -n +2)"
#echo "$x"

arr=($x);

#for i in $(seq 0 $c)
#do
#	echo ${arr[i]};
#done

n=$((RANDOM%(c+1)))

fortune|cowsay -f ${arr[n]}
