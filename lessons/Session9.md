# The awk language

## Usage of a scriptfile for awk

You can keep the awk script in a file and use it on command prompt as
follows.

You can name the script file as you wish. It may be a good idea to name it with ".awk" ending, say "*myfile.awk*".

You can process the lines from a file like RollList.csv using the command

      cat RollList.csv | awk -f myfile.awk

First line of the script file can have the following line to indicate which binary executable is used to interpret the script.

      #!/usr/bin/gawk -f

The first line *\#!/usr/bin/gawk* tells the bash shell that the program */usr/bin/gawk* should be used as an interpreter for the script that follows in the file. This is a generic feature and can be used for all kinds of programs as interpreters for bash scripts.  If the program name is given wrongly, bash will throw an error that the interpreter could not be found.

Give executable permissions to the file using the command like below.

      chmod u+x myfile.awk

Now you can run the script to process the lines from a file like RollList.csv using the command 

      cat RollList.csv | ./myfile.awk

An awk script contains three sections, each enclosed using flower brackets {}. The section that starts with BEGIN gets executed before any line is read from the input. You can use this section to initialize variables. The main body is contained in the second section and has no name before the flower brackets. This gets executed once for every line from the input. That is, if the input has 1000 lines, this main body gets executed 1000 times, once per line. The section that starts with END gets executed after the input is closed. You can use this to wrap up any computation, print out things and close.

## Warning
The script file for awk should not have anything between the three sections. The flower brackets enclosing the three sections should not contain anything between them. All comments shall be inside the sections. You can use a hash *\#* to document your script with comments. All text after the hash till the end of the line will be ignored by the interpreter.

## Homework

1. Create a comma separated value (*csv*) file that contains three columns of data where the second and third columns contain the square and cube of the number in the first column, respectively. You can do it manually or using a shell script. Create an awk script that reads each line and prints out the sum of all three columns as the fourth column.  In the last line the average of each of the four columns shall be printed out along with a remark on how many lines have been processed.

2. Look up the log files in */var/log* directory of your ubuntu machine. Pick up one of those files and extract statistics from that file using awk. Every line in such a log file has a pattern that you can use to extract the fields and analyse.

3. The command "*ls -lR*" gives a long listing of all the files in the current folder recursively. Redirect that to a file. Analyze the lines in that file to report statistics on the number of files that are within intervals such as 50 kb, 250 kb, 1 MB, 10 MB and so on. That is, report how many files have a size larger than 1 MB but less than 10MB etc.,

