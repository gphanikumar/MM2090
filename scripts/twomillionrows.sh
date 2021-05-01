#!/bin/bash
# Save this file as twomillionrows.sh
# Change the mode using the following command:
# chmod 755 twomillionrows.sh
# Run the script as follows to copy the data to
# the file twomillionrows.txt
# ./twomillionrows.sh > twomillionrows.txt
# It will take a little while to run, be patient.
i=0;
while [ $i -lt 2000000 ]
do
    echo $i, ",", $(( $i*$i ));
    i=$(( $i+1 ));
done
# Check the number of lines in the output as follows:
# wc -l twomillionrows.txt
