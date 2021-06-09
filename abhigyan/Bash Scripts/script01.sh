#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
# 
# This script lists all the files in /bin directory
# which are shell scripts
# Things to pay attention to:
#  * Use of ` to convert output of a system command to a list
#  * for loop and if loop
#  * Variables n and t: the way they are set and are used
#  * Boolean condition in if loop to test if t is not null

for n in `ls /bin`
do
	t=`file /bin/$n|grep "shell script"`;
	if [ ! -z "$t" ]
	then
		echo /bin/$n
	fi
done

# Homework:
# Edit the directory name and check for shell scripts
# in /usr/bin, /sbin and /usr/sbin directories
#
#  ---- end of script01.sh ---------------------
