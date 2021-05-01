#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script makes a simple use of gawk command
# Find the sum of sizes of all files in a folder 
# Things to pay attention to:
#  * Use of BEGIN,END and the code sections of gawk script
#  * Use of $5 for the fifth field using space as default 
#    field separator
#  * Variables n and t: the way they are set and are used
#
ls -l /bin | grep "zip" | gawk 'BEGIN{print "Printing individual sizes."}{x += $5; print $9 ": " $5;} END{print "Total size = " x " bytes"}'
# 
# Homework:
#  * Modify the code to perform other operations on fields in the 
#    incoming stream of lines
