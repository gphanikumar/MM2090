# Assignment 3

## [Question 1](question_1)

Consider the following example of a time table with the starting time in Hrs in the header row and the days of occurance in the first column. This table is described in a controlled language as given below: In this example, one can see that Day-1 and Day-3 can be merged without any overlap of slots. Merging Day-1 and Day-2 leads to a clash of Slot-2 and Slot-3.

**Assignment Task:**
 * Create a weekly course time table for yourself by hand and prepare an image to show it in tabular fashion as above.
 * Create its description in the controlled language as above and save it as a txt file. 
 * Write a python code that takes the name of this txt file as command line input. The code shall parse the txt file and create a data structure to hold the start and end times of all slots and the days Page 1 of 2they occur on. Consider dictionaries or dataframes for this if needed. The code shall produce an image that shows the table created using this data structure.
 * Expand the above code to check if any pair of rows can be merged without overlap of slots. One can loop over all possible pairs of rows for this task. When executed, the code will output at least two lines as examples – one line showing which pair of rows can be merged without clash of slots and another line showing which pair of rows leads to clash of which slots.

## [Question 2](question_2)

There are a number of natural phenomena that can be described using a fraction of evolution as
a function of time. If one were to quantify the evolution and plot, it could look like the following
image. The scatter is part of the uncertainty in experimental measurements. The blue line shows a
model that is fit over this data.

**Assignment Task:**
* Using a combination of appropriate functions and random noise, generate a plot that looks like this.
* Use the data from the above plot to fit a function and identify the time at which the growth rate is most rapid.

