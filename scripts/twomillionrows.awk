#!/usr/bin/gawk -f
# Use this code with the datafile twomillionrows.txt created
# as described in the lesson. See the script twomillionrows.sh
# on how to create that txt file for input.
# Save this script as twomillionrows.awk
# Run this code as follows:
# chmod 755 twomillionrows.awk
# ./twomillionrows.awk twomillionrows.sh > output.txt
# Check the number of lines, head and tail of the output file
# wc -l output.txt
# head output.txt
# tail output.txt
BEGIN{
    FS=",";
    n=0;
}
{
    a=$1;
    b=$2;
    c=a+b;
    print a, ",", b, ",", c;
    n++;
}
END{
    print "Rows processed:", n;
}
