#!/bin/bash

read -p "Please input a four digit natural number: " input


if [[ $input =~ ^-[0-9]+$ ]]; then
	echo "Error: Got a negative number. Please input a four digit natural number."
	./$(basename $0) && exit

elif [[ $input =~ ^[0-9]+$ ]]; then
	if [[ ${#input} -ne 4 ]]; then
		echo "Error: Got a ${#input} digit number. Please input a four digit natural number."
		./$(basename $0) && exit
	fi

elif [[ $input =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]; then
	echo "Error: Got a float. Please input a four digit natural number."
	./$(basename $0) && exit

else
	echo "Error: Got a string. Please input a four digit natural number."
	./$(basename $0) && exit

fi


char0=("0")
char1=("1")
char2=("A" "B" "C")
char3=("D" "E" "F")
char4=("G" "H" "I")
char5=("J" "K" "L")
char6=("M" "N" "O")
char7=("P" "Q" "R" "S")
char8=("T" "U" "V")
char9=("W" "X" "Y" "Z")

typeset -n digit1=char${input:0:1}
typeset -n digit2=char${input:1:1}
typeset -n digit3=char${input:2:1}
typeset -n digit4=char${input:3:1}

for c_1 in ${digit1[@]};
do
	for c_2 in ${digit2[@]};
	do
		for c_3 in ${digit3[@]};
		do
			for c_4 in ${digit4[@]};
			do
				echo $c_1$c_2$c_3$c_4
			done;
		done;
	done;	
done;
