# Application of awk in processing huge data

Spreadsheet software such as Microsoft Excel or LibreOffice Calc can
load only 1 million rows in a sheet. That comes to 2^20^ = 1048576 rows.
If you have more rows than that in a file, you will need tools that can
work on them line by line or in an efficient manner.

The following example illustrates the case shown in the class.

# Working on two million rows of data
Creating a file with 2 million rows of data, each row containing two fields -- the second is a square of the first. The shell script is linked here as [../scripts/twomillionrows.sh](twomillionrows.sh).

Execute this script using the command:

      ./twomillionrows.sh > twomillionrows.txt

## Check the input data for its content.

Check the number of lines in the file using the command:

      wc -l twomillionrows.txt

Check the first few lines of the file using the command:

      head twomillionrows.txt

Check the last few lines of the file using the command:

      tail twomillionrows.txt

## Limitations of GUI tools
Try opening this file in LibreOffice Calc or Microsoft Excel and see the error.  Scroll to the bottom of the sheet to see how many rows of data could be read by the spread sheet software.  

## A simple tast
The task is to add the two columns and create the third column. This can be done using the awk script linked as [../scripts/twomillionrows.awk](twomillionrows.awk).

Execute the script using the command to store the output in a file:

     cat twomillionrows.txt | awk -f twomillionrows.awk > output.txt

If you wish to check how long it took for awk to do this processing, time the process using the command:

     time cat twomillionrows.txt | awk -f twomillionrows.awk > output.txt

Follow the steps above (using commands like wc -l, head and tail) to check the content of the file output.txt.

## Homework

1. Write a code in awk that can list *n* number of Fibonacci numbers where *n* is a command line input for the script.
