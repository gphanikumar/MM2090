#!/bin/bash

# Unzipping the chats
tar -xvzf mm2090-apr2021-attendance.tar.gz
mv mm2090-apr2021-attendance/ transcripts/

# Grepping the name and roll number of students
mkdir registered
lectures=0;
for files in `ls transcripts/`;
do
	lectures=$(( $lectures+1 ));
	cat transcripts/$files | grep -oe '^\(.*\)..[[:digit:]][[:digit:]][[:alpha:]]...:' > registered/$(basename $files .sbv).txt
done;
rm -r transcripts/

# Pre-processing
for files in `ls registered/`;
do
        cat registered/$files | sed -e 's/\(.*\) \(.*\):/\2,\1/g'  > registered/$(basename $files .txt).csv
done;
rm registered/*.txt


mkdir cache
for files in `ls registered/`;
do
	cat registered/$files | sed -e 's/ /_/g' > cache/$(basename $files .csv).csv
done;	
rm -r registered/

# Removing multiple instances for each lecture
mkdir attendance
for files in `ls cache/`;
do
	cat cache/$files | awk -F, '{name[$1]=$2;}END{for (id in name){printf("%s,%s\n", id, name[id]);}}' | sort -k1 -n > attendance/$(basename $files .csv).csv
done;
rm -r cache/

# Finding the total registerants
tail -n+1 -q attendance/*.csv | awk -F, '{name[$1]=$2;}END{for (id in name){printf("%s,%s\n", id, name[id]);}}' | sort -k1 -n > registered.csv

# Finding the percentage of attendance
tail -n+1 -q attendance/*.csv | awk -F, -v total=$lectures '{data[$1]=$0;name[$1]++;}END{for (id in name){printf("%s,%.2f\%\n", data[id], name[id]/total*100);}}' | sort -k1 -n > attendance.csv

# Finding absentees in every lecture
mkdir absent
for files in `ls attendance/`
do
	diff attendance/$files registered.csv | egrep '....b...' | sed 's/> \(.*\)/\1/g' | awk -v lecture=$(basename $files .csv) '{printf("%s,%s\n", $0, lecture)}' > absent/$(basename $files .csv).csv;
done;	
rm registered.csv
rm -r attendance/

# Processing the absentee list
tail -n+1 -q absent/*.csv | awk -F, '{name[$1]=$2;absent[$1]=absent[$1]$3;}END{for (id in name){printf("%s,%s,%s\n", id, name[id], absent[id]);}}' | sort -k1 -n > absent.csv
rm -r absent/

# Combining the data
awk -F, 'NR==FNR {absent[$1]=$3; next}{printf("%s,%s\n", $0, absent[$1]);}' absent.csv attendance.csv > cache.csv
rm absent.csv
rm attendance.csv

cat cache.csv | sed 's/_/ /g' | sed 's/\L/ L/g'  > final.csv
rm cache.csv

# Adding header
awk -F, 'BEGIN{printf("Roll,Name,Percentage,Missed Lectures\n");}{print $0;}' < final.csv > Attendance.csv
rm final.csv

echo

echo "Total number of Lecutres = $lectures"

if [ -z "$1" ]; then
	echo
else
	cat Attendance.csv | grep $1 | gawk -F, '{print "Name: ", $2; print "Roll Number: ", $1; print "Attendance Percentage: ", $3; print "Lectures Missed: ", $4;}'
fi
