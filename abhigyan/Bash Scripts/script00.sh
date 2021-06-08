#!/bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script illustrates special variables and the if loop
# Things to pay attention to:
#  * Special variables $#, $$, $0, $1 etc.,
#  * Use of the keyword "test" for if condition
#  * Use of [ ] for if condition
#  * Use of -gt for numeric comparison
#  * Use of == for string comparison
#  * Nested if loop
#
echo "Name of this script:"
echo $0
echo "Process ID of this script:"
echo $$
echo "Number of command line arguments:"
echo $#
echo "First command line argument:"
echo $1
echo "Second command line argument:"
echo $2
echo "Third command line argument:"
echo $3

if test $# -gt 2;
then
	echo "[1] You gave more than two arguments";
	if test $1 == $2;
	then
		echo "First two arguments are same"
	fi
fi

if [ $# -gt 2 ]
then
	echo "[2] You gave more than two arguments";
fi
#
# Homework:
#  * Create a script that mimics the behavior of ls command
#
# ----- end of script00.sh -------------------------
