#! /bin/bash
# MM2090 : Introduction to Scientific Computing
# Dept of MME, IIT Madras, Chennai 600036 INDIA
# G. Phanikumar gphani@iitm.ac.in
#
# This script makes a simple use of sed command
# Replace one string with another and print.
# Things to pay attention to:
#  * Use of s/find/replace/g syntax
#
ls -l /bin | sed -e "s/root/Admin/g"
# 
# Homework:
#  * Modify the code to perform other such string replacement operations
#    on incoming stream of lines
#  * Learn the regex syntax for search string
