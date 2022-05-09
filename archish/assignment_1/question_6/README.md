# Question 6

## Problem Statement
In the following URLs, the atomic radii are given as a list that you can readily copy-paste into a csv file: [Link 1](http://crystalmaker.com/support/tutorials/atomic-radii/index.html) or [Link 2](https://en.wikipedia.org/wiki/Atomic_radii_of_the_elements_(data_page)). Skip empty rows as needed. Pick an element that has the atomic number ending with the
same digit as your roll number and list all elements whose atomic radii are within a certain percentage. Choose this percentage to be 10% to start with and increase if needed to be able to list at least 3 elements that are of comparable size. The solution includes your script, the element chosen, its radius in picometers, criterion for closeness in size and the list of elements that are close in size.

### Hint
First create a csv file for input data and try a mix of shell and awk scripts.

### Application
Analysis of data available in the open domain in not so readily usable form is part of scientific computing research. Webpage scraping, scripts to atomate it and storing historical data is part of research.

## Solution

**Language Used:** `awk` and `bash`

**Output:** [File](Similar.csv)

### Usage

```bash
chmod 755 commands.sh
./commands.sh 
``` 