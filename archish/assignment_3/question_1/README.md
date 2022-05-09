# Question 1

## Problem Statement
Consider the following example of a time table with the starting time in Hrs in the header row and the days of occurance in the first column. 

| Row 	| 8 	| 9 	| 10 	| 11 	| 12 	| 13 	| 14	 | 15	 | 16	 | 17	 |
| :-: 	|:-:	|:-:	|:-:	|:-:	|:-:	|:-:	|:-:	 |:-:	 |:-:	 |:-:	 |
| Day 1 | 		| Slot-1| Slot-1| 		|		| Slot-2| Slot-2 |		 |		 |       |
| Day 2 | 		| 		| 	 	| 		|Slot-3	| Slot-3| 		 |		 |		 |       |
| Day 3 | 		| 		| 		|Slot-4	|Slot-4 | 		|    	 |		 |Slot-5 |Slot-5 |

This table is described in a controlled language as given below: In this example, one can see that Day-1 and Day-3 can be merged without any overlap of slots.

```
Tab-1 is-a table
Tab-1 has-row Day-1
Tab-1 has-row Day-2
Tab-1 has-row Day-3
Day-1 has-slot Slot-1
Day-1 has-slot Slot-2
Day-2 has-slot Slot-3
Day-3 has-slot Slot-4
Day-3 has-slot Slot-5
Slot-1 starts-at 9:00 Hrs
Slot-1 ends-at 10:59 Hrs
Slot-2 starts-at 13:00 Hrs
Slot-2 ends-at 14:59 Hrs
Slot-3 starts-at 12:00 Hrs
Slot-3 ends-at 13:59 Hrs
Slot-4 starts-at 11:00 Hrs
Slot-4 ends-at 12:59 Hrs
Slot-5 starts-at 16:00 Hrs
Slot-5 ends-at 17:59 Hrs
```

Merging Day-1 and Day-2 leads to a clash of Slot-2 and Slot-3.

**Assignment Task:**
 * Create a weekly course time table for yourself by hand and prepare an image to show it in tabular fashion as above.
 * Create its description in the controlled language as above and save it as a txt file. 
 * Write a python code that takes the name of this txt file as command line input. The code shall parse the txt file and create a data structure to hold the start and end times of all slots and the days Page 1 of 2they occur on. Consider dictionaries or dataframes for this if needed. The code shall produce an image that shows the table created using this data structure.
 * Expand the above code to check if any pair of rows can be merged without overlap of slots. One can loop over all possible pairs of rows for this task. When executed, the code will output at least two lines as examples – one line showing which pair of rows can be merged without clash of slots and another line showing which pair of rows leads to clash of which slots.



### Output Required
The code as .py file; a PDF containing the original hand made image of the table, description of the table in the controlled language; image created by the code, screenshot of the output when the code is executed.

### Application
 * In civil engineering and manufacturing, there is a need to optimize the number of machines to be employed for a given project. Think of each row of the table as a machine being used for the project. Each slot is the duration of use of the machine for a specific task in the project. Each row is like a series of tasks to be performed. One would like to explore if one can decrease the number of machines without affecting the project execution.
 * While allocating tasks to personnel as part of a roster system in a company, the manager would like to minimize the number of people required for the project. Each row is like a job-description and each slot is like a task that is assigned to that job-portfolio. Under appropriate assumptions, if one can merge the job- portfolios without a clash of task, one can reduce the manpower required for the project.

## Solution

**Language Used:** `python`

**Input:** [Example 1](example_1.txt), [Example 2](example_2.txt), [Example 3](example_3.txt)
**Output:** [Example 1](IITM-TimeTable_(example_1).png), [Example 2](IITM-TimeTable-v2_(exapmle_2).png), [Example 3](Tab-1_(example_3).png)

**Jupyter Notebook:** [Notebook](table.ipynb)