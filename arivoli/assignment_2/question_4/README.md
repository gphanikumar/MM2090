# Question 4

Structured Query Language (SQL) is extensively used to manage databases and is designed to query 4.
data in relational databases. In this exercise, you are tasked to replicate one of SQL’s fundamental
features JOIN using (preferably) awk or a combination of join, sort and sed (and other commands as
needed).<br />
The JOIN clause is used to combine rows from two (or more) tables based on some relation common
between them. SQL offers four types of JOINs (Fig. 1), namely<br />
– INNER JOIN: Returns records that have matching values in both tables,<br />
– LEFT JOIN: Returns all records from the left table, and the matched records from the right table,<br />
– RIGHT JOIN: Returns all records from the right table, and the matched records from the left table,<br />
– FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table<br />

(a) Write a bash script with flags (‘-I’ for INNER JOIN, ‘-L’ for LEFT JOIN, ‘-R’ for RIGHT JOIN and
‘-F’ for FULL JOIN) to parse two .csv files (with fixed columns) and output the joined .csv file <br />
(b) Extend sub-part (a) to adapt for generic csv files (no restriction on number of columns). You may
assume that the columns names across the two files will be identical.

### Input:
`file_1.csv`<br />
ID, Roll <br />
1, AE23B005<br />
2, AE23B010<br />
4, AE23B013<br />
5, AE23B020<br />
`file_2.csv`<br />
Roll, Name<br />
AE23B005, BHAVESH<br />
AE23B010, GUHAAN<br />
AE23B011, HEMANT<br />
AE23B013, KISHOREKUMAR

### Usage:
./question_4.sh -F file_1.csv file_2.csv > out.csv

### Output:
`out.csv`<br />
ID, Roll, Name<br />
1, AE23B005, BHAVESH<br />
2, AE23B010, GUHAAN<br />
NULL, AE23B011, HEMANT<br />
4, AE23B013, KISHOREKUMAR<br />
5, AE23B020, NULL

