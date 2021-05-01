# Introduction to awk language

One can use awk command in two ways:

1. The script is provided on the command line itself.
2. The script is provided as a separate file, say, "myscript.awk"

In case \[1\] the command would look as follows:

      cat RollList.csv | awk -e 'BEGIN{print "Beginning..."; c=0;}{c++;}END{print c;}'

This command does the following. The commands within the block "BEGIN"
are executed once before the lines are processed. The string
"Beginning\..." is printed on the screen and a variabe called "c" is
initialized with a value "0".

The block that follows is executed once for each incoming line. The
command given here is to increment the variable "c'.

The commands within the block END are executed once after all the lines
are processed. The value of the variabel "c" is printed out.

This script counts the number of lines in the file "RollList.csv".

One can add more commands in each of these blocks as needed. The syntax
is similar to C language. Refer to the documentation of the awk command
for more information.

In case \[2\] the command would look like the following.

      cat RollList.csv | awk -f myscript.awk

The option "-f" indicates that the name that follows is that of a file
that contains the awk script. The contents can be the following to
achieve the exact task as above example.

      BEGIN{
          print "Beginning...";
          c=0;
      }
      {
          c++;
      }
      END{
          print c;
      }

## An example

Download the script [myscript.awk](../scripts/myscript.awk) and run it on the RollList.csv and see the output.

## Homework

Execute this script and see the output.

Modify it to try out your understanding of the regex and code
capabilities of awk.
