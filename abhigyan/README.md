# MM2090 - July-November 2019
This folder contains all of the files I had ever created during the course MM2090 that I took in the July-November 2019 semester at IITM. Feel free to try out stuff from here and use anything you need or feel will be useful.

## Bash Scripts:

This folder contains all the Scripts that were created for working with and learning Bash Scripting, along with some data files for the scripts to work on.

If you want to try any of them out, after cloning, first set `chmod +x <scriptname>` or `chmod 777 <scriptname>` and then `./<scriptname>` to run them. They should mostly run properly.

### A note on using Awk Scripts:

Awk scripts need to be run in the following way:

`awk -f <awk_script_name> args`

If you just run `./<awk-script-name>`, it generally won't work.

### Descriptions of some selected bash and awk scripts:

#### cowsay-randomizer.sh

This is a script to randomize the `cowsay` command along with the `fortune` command to show a random cowfile saying a random fortune cookie quote.

To use this, you need to install the `fortune` and the `cowsay` packages.

#### csv-generator.sh

This file will generate a "squares.csv" file containing numbers from 1 to 1500 in the first column, their squares in the second column, and their cubes in the third column.

You can modify this script to create any type of data that you need.

#### plotter.sh

This Shell Script was meant to be able to plot the output of a damped spring, but I never got round to finishing it. See if you can finish it, maybe using some Python to complete the work. Bonus points if you're able to finish it completely using bash itself.

#### Data-generator.sh

This script generates the values for a damped oscillator having `$1` samples, and a damping constant as specified in `$2`.

The output is sent to a file `oscillator.txt`

Use this file in plotter.sh if you decide to complete it. 

#### awk -f adder.awk $1 (optional argument)

Supply no command line arguments and run script.
Enter 3 values separated by commas, and keep going until you want to stop.

When you do want to stop, enter Ctrl+D to send an End of File character and end the script.
This will print out the averages of each of the columns.

If you run this script with the squares.csv file generated before, you can get the average of the values, their squares and their cubes in this output.

#### awk -f scriptx.awk RollList.csv

This provides some statistics on the students given in the RollList.csv file.

Run as either `awk -f scriptx.awk RollList.csv` or `cat RollList.csv | awk -f RollList.csv`

Read this script properly for learning awk scripting.

#### script\_creator.sh <scriptname>

This creates an empty script at the given location and opens it in vim. Edit this script before running it for proper behaviour.

#### awk -f fibonacci.awk $1

This produces the fibonacci sequence up to $1 terms.

## Homework PDFs and Homeworks

The Homework PDFs and Homeworks folders contain all the Homework that was submitted for each assignment given to us.

See internal readme files.

## Jupyter

This has a number of Jupyter notebooks, mostly created during the classes and while solving homework.

## MakeHW

Some C programs and a Makefile. Made while learning MakeFiles

## Session Notes

Contains notes provided by professor Phanikumar for each of the sessions conducted.
Definitely worth a read, especially when in a tough spot.

## 2021 Update
All content has now been uploaded and is free to be used, would be great if proper attributions and credit is given.
