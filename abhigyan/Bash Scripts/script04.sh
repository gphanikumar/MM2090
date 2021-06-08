#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script lists fibonacci numbers below the integer
# as given by command line argument
# Things to pay attention to:
#  * Use of $# for number of arguments
#  * Use of $1 for first argument
#  * Use of test and -lt for numeric comparison
#  * while loop
if test $# -eq 0
then
	echo "Run the command with an integer as argument"
	exit 1;
elif test $1 -lt 0 
then
	echo "Please give a positive number as argument"
	exit 1;
else
	echo "Printing fibonacci numbers below " $1
fi
#
n1=1
n2=1
echo $n2
n=1
while [ $n -lt $1 ]
do
	echo $n
	n=`expr $n1 + $n2`;
	n2=$n1
 	n1=$n	
done
#
# Homework:
#  * Modify this program to printout other such series
