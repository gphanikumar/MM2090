#!/bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
# 
# This script lists the use of gawk to perform stream processing
# of fields for numerics.
# Things to pay attention to:
#  * header and footer sections
#  * main section that performs operations
#  * 
#  * 
cat t1-data.txt | gawk -e 'BEGIN{print "swapped fields with additional columns follow:"; FS=","; nlines=0;}{print $2, $1, $1+$2, $1*$2; nlines++;}END{print "total lines: " nlines;}'
