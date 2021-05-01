#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script lists all shell scripts in four
# different directories
# Things to pay attention to:
#  * Use of nested for loops
#  * Use of multiple values with the keyword "in"
#  * Use of two variables myd and n in a single string
#
for myd in /bin /sbin /usr/bin /usr/sbin
do
	for n in `ls $myd`
	do
		t=`file $myd/$n|grep "shell script"`;
		if [ ! -z "$t" ]
		then
			echo $myd/$n
		fi
	done
done
#
# Homework
#  * List all pdf files in your couple of folders
#  * List size of files of a type in a folder
# ------ end of script03.sh ----------------------
