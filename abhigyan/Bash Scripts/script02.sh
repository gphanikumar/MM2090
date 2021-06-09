#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script shows usage of expansions to create lists
# Things to pay attention to:
#  * Use of {} for expansion
#  * for loop 
#  * Variables i and n : the way they are set and are used
#
echo "Use of character range expansion"
for i in Char_{A..F}
do
	n=$i.txt
	echo $n
done
#
echo "------------------------------"
echo "Use of integer range expansion"
for i in Int_{1..10}
do
	n=$i.txt
	echo $n
done
#
echo "------------------------------"
echo "Use of a mix of character and integer range expansion"
for i in Mix_{A..F}{1..5}
do
	n=$i.txt
	echo $n
done
#
# Homework
#  * Create a set of folders for months in a range of years
#  * Create a set of files for all students of your class
