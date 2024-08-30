#!/usr/bin/bash
<<COMMENT
Name: Arivoli Ramamoorthy
Roll number: EE23B008
Date: 02-03-2024
Description: 
-Find the n-th term in a generalized recurrence relation.
-Recurrence Relation: af[n] = bf[n - 1] + cf[n - 2].  
Input: Coefficients a, b, c, and initial values f[1] and f[2] are provided via a file.  
Output: Computes and outputs the n-th term for each test case. 
COMMENT

#Check if there are 2 command line arguments
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <file1> <file2>"
	exit 1
fi

# Function to calculate the nth term in the recurrence relation
calculate_nth_term() {
	local n=$1
	local a=$2
	local b=$3
	local c=$4
	local f1=$5
	local f2=$6
	# Base cases
	if [ "$n" -eq 1 ]; then
		echo $f1
		return
	elif [ "$n" -eq 2 ]; then
		echo $f2
		return
	fi

	local prev=($f1 $f2)
	local current=0

	for ((i = 3; i <= n; i++)); do
		current=$(bc <<<"scale=4; ($b * ${prev[1]} + $c * ${prev[0]}) / $a")
		prev[0]=${prev[1]}
		prev[1]=$current
	done

	echo $current
}

# Reading coefficients from inital.txt
read -r a b c f1 f2 <<<"$(cat "$1" | tr -d ',')"
#echo "Coefficients: a=$a, b=$b, c=$c, f1=$f1, f2=$f2"
if [[ -z $a || -z $b || -z $c || -z $f1 || -z $f2 ]]; then
	echo "Error: All coefficients (a, b, c, f1, f2) must be provided in $1."
	exit 1
fi

IFS= read -r num_testcases <"$2"
#echo "Number of test cases: $num_testcases"

display_correct_usage() {
	echo "Correct usage: <number of test cases> <test case 1> <test case 2> ..."
}

actual_num_testcases=$(tail -n +2 "$2" | wc -l)

if [[ $num_testcases -ne $actual_num_testcases ]]; then
	echo "Error: Number of test cases provided ($actual_num_testcases) does not match the specified number ($num_testcases)."
	display_correct_usage
	exit 1
fi

for ((i = 0; i < actual_num_testcases; i++)); do
	IFS= read -r n
	result=$(calculate_nth_term "$n" "$a" "$b" "$c" "$f1" "$f2")
	#echo "For n=$n, nth term: $result"
	echo "$result"
done < <(tail -n +2 "$2")

