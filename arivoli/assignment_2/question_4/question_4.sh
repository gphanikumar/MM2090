#!/bin/bash

if [[ $# != 3 ]]; then
	echo "./question_4.sh [-I | -R | -L | -F] [file_1.csv] [file_2.csv]"
	exit 1
fi

# Assign command line arguments to variables
j=$1
f1=$2
f2=$3

# Declare associative arrays 'left' and 'right'
declare -A left
declare -A right

# Set the Internal Field Separator to comma and space
IFS=', '

while read -r key value; do
	left[$value]=$key
done <"$f1"

while read -r key value; do
	right[$key]=$value
done <"$f2"

#4 different flags, functions
case $j in
"-I")
	for key in "${!left[@]}"; do
		if [[ ! -z ${right[$key]} ]]; then
			echo "${left[$key]}, $key, ${right[$key]}"
		fi
	done
	;;
"-R")
	for key in "${!right[@]}"; do
		if [[ ! -z ${left[$key]} ]]; then
			echo "${left[$key]}, $key, ${right[$key]}"
		else
			echo "NULL, $key, ${right[$key]}"
		fi
	done
	;;
"-L")
	for key in "${!left[@]}"; do
		if [[ ! -z ${right[$key]} ]]; then
			echo "${left[$key]}, $key, ${right[$key]}"
		else
			echo "${left[$key]}, $key, NULL"
		fi
	done
	;;
"-F")
	for key in "${!left[@]}"; do
		if [[ ! -z ${right[$key]} ]]; then
			echo "${left[$key]}, $key, ${right[$key]}"
		else
			echo "${left[$key]}, $key, NULL"
		fi
	done
	# For each key in 'right'
	for key in "${!right[@]}"; do
		if [[ -z ${left[$key]} ]]; then
			echo "NULL, $key, ${right[$key]}"
		fi
	done
	;;
*) ;;
esac
