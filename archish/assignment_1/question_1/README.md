# Question 1


## Problem Statement
Download and use [RollList.csv](https://raw.githubusercontent.com/gphanikumar/MM2090/master/scripts/RollList.csv) for this question. Assume that each year the hostel fee of freshers is incremented by 10 percent of the previous year’s fees. This fee you pay as a fresher continues to be paid every semester thereafter without increment. Eg., fees for students who joined in 2018 will be lower than those who joined in 2019, but the 2019 batch will pay the same fees every semester and so on. The students who joined in the
year 2017 had to pay INR 20,000 as hostel fees. The solution includes a script to calculate and the output of total fees received this
semester by the hostel administration from the students on the Roll List.

### Hint
You can use a shell script or awk script to achieve this.

### Application
Minor numerical operations on a regular dataset in a csv file is a typical task in
data analysis.

## Solution

**Language Used:** `awk`

### Usage

```bash
chmod 755 fees.awk
./fees.awk < RollList.csv 

``` 