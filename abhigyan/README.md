# MM2090 - July-November 2019
This folder contains all of the files I had ever created during the course MM2090 that I took in the July-November 2019 semester at IITM. Feel free to try out stuff from here and use anything you need or feel will be useful.

# Bash Scripts:

This folder contains all the Scripts that were created for working with and learning Bash Scripting, along with some data files for the scripts to work on.

If you want to try any of them out, after cloning, first set `chmod +x <scriptname>` or `chmod 777 <scriptname>` and then `./<scriptname>` to run them. They should mostly run properly.

## A note on using Awk Scripts:

Awk scripts need to be run in the following way:

`awk -f <awk_script_name> args`

If you just run `./<awk-script-name>`, it generally won't work.

## Descriptions of some selected bash and awk scripts:

### [cowsay-randomizer.sh](Bash%20Scripts/cowsay-randomizer.sh)

This is a script to randomize the `cowsay` command along with the `fortune` command to show a random cowfile saying a random fortune cookie quote.

To use this, you need to install the `fortune` and the `cowsay` packages.

### [csv-generator.sh](Bash%20Scripts/csv-generator.sh)

This file will generate a "squares.csv" file containing numbers from 1 to 1500 in the first column, their squares in the second column, and their cubes in the third column.

You can modify this script to create any type of data that you need.

### [plotter.sh](Bash%20Scripts/plotter.sh)

This Shell Script was meant to be able to plot the output of a damped spring, but I never got round to finishing it. See if you can finish it, maybe using some Python to complete the work. Bonus points if you're able to finish it completely using bash itself.

### [Data-generator.sh](Bash%20Scripts/Data-generator.sh)

This script generates the values for a damped oscillator having `$1` samples, and a damping constant as specified in `$2`.

The output is sent to a file `oscillator.txt`

Use this file in plotter.sh if you decide to complete it. 

### awk -f [adder.awk](Bash%20Scripts/adder.awk) $1 (optional argument)

Supply no command line arguments and run script.
Enter 3 values separated by commas, and keep going until you want to stop.

When you do want to stop, enter Ctrl+D to send an End of File character and end the script.
This will print out the averages of each of the columns.

If you run this script with the squares.csv file generated before, you can get the average of the values, their squares and their cubes in this output.

### awk -f [scriptx.awk](Bash%20Scripts/scriptx.awk) RollList.csv

This provides some statistics on the students given in the RollList.csv file.

Run as either `awk -f scriptx.awk RollList.csv` or `cat RollList.csv | awk -f RollList.csv`

Read this script properly for learning awk scripting.

### [script\_creator.sh](Bash%20Scripts/script_creator.sh) <scriptname>

This creates an empty script at the given location and opens it in vim. Edit this script before running it for proper behaviour.

### awk -f [fibonacci.awk](Bash%20Scripts/fibonacci.awk) $1

This produces the fibonacci sequence up to $1 terms.

# Homework PDFs and Homeworks

The Homework PDFs and Homeworks folders contain all the Homework that was submitted for each assignment given to us.

See internal readme file.

# Jupyter

This has a number of Jupyter notebooks, mostly created during the classes and while solving homework.

## Note on Sage Notebooks:

Sage notebooks tend to not render properly on GitHub directly, pull/clone the repo locally to see them properly.

## Descriptions of selected notebooks:

### [3D Plotting using Python.ipynb](Jupyter/3D%20Plotting%20using%20Python.ipynb)

A short example on using the mplot3d submodule of matplotlib to make 3D plots.
Also, some information on different types of computing (symbolic vs numeric etc.)

### [Contour Plots.ipynb](Jupyter/Contour%20Plots.ipynb)

A few examples on using contour plots with some short explanations.

### [Finite Difference Method.ipynb](Jupyter/Finite%20Difference%20Method.ipynb)

This explains the basics of the finite difference method in simple markdown. No code is provided here.

### [Introduction to SageMath.ipynb](Jupyter/Introduction%20to%20SageMath.ipynb)

This is an introduction to using SageMath with some explanations in the Markdown cells. It was used while learning basic SageMath.

### [MarkdownSandbox.ipynb](Jupyter/MarkdownSandbox.ipynb)

An example notebook containing only markdown to learn the syntax and effectively use basic markdown. Provided by professor Phanikumar

### [Multiple Integrals in SageMath.ipynb](Jupyter/Multiple%20Integrals.ipynb)

An attempt at taking multiple integrals in SageMath. Useful to learn the syntax and procedure for taking a multiple integral in Sage.

### [My First Notebook.ipynb](Jupyter/My%20First%20Notebook.ipynb)

Explore the wonder of using a Jupyter Notebook for the first time...

It might just make you cringe, or laugh, depending on how you see it :D

### [Plotting Multivariable Functions.ipynb](Jupyter/Plotting%20Multivariable%20Functions.ipynb)

An example of plotting multivariable functions in 3D and higher spaces in Sage.

### [Random Integration, Differentiation, Area, and a little LaTeX.ipynb](Jupyter/Random%20Integration%2C%20Differentiation%2C%20Area%2C%20and%20a%20little%20LaTeX.ipynb)

This introduces the use of LaTeX in Jupyter notebooks, which makes them extremely useful for scientific computing and a form of programming known as Literate Programming, which is basically having executable code and docuementation and explanations in the same file.

### [Sierpinski.ipynb](Jupyter/Sierpinski.ipynb)

Sierpinski Triangle generator. Try making this yourself before seeing the code for this one.

### [Heavy Maths/Assignment 2 (Taylor Expansions and Lagrange Multipliers)](Jupyter/Heavy-Maths/Assignment%202%20(Taylor%20Expansions%20and%20Lagrange%20Multipliers).ipynb)

### [Differential Equations (Assignment 1).ipynb](Jupyter/Differential%20Equations%20(Assignment%201).ipynb)

### Session-x.ipynb

These are notes taken during sessions. Links to each:

[Session-14](Jupyter/Session-14.ipynb)
[Session-15](Jupyter/Session-15.ipynb)
[Session-16](Jupyter/Session-16.ipynb)
[Session-17](Jupyter/Session-17.ipynb)
[Session-18](Jupyter/Session-18.ipynb)
[Session-19](Jupyter/Session-19.ipynb)
[Session-20](Jupyter/Session-20.ipynb)
[Session-21](Jupyter/Session-21.ipynb)

# MakeHW

Some C programs and a Makefile. Made while learning MakeFiles

# Session Notes

Contains notes provided by professor Phanikumar for each of the sessions conducted.
Definitely worth a read, especially when in a tough spot.
