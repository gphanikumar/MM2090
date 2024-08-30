# Assignment 2

## Question 1 

Web scraping is the process of extracting data from a website or any online source. In this era of Large
Language Models, web scraping has become commonplace for gathering large quantities of data. Often,
the data that is gathered is unusable and requires pre-processing. In this task, you are required to fetch
data from an online source and perform some basic manipulations to prepare the data.

NASA maintains an [archive](https://apod.nasa.gov/apod/archivepixFull.html) of photographs captured by various enthusiasts, along with a brief explanation written by a professional astronomer. You are tasked to create a list of titles of these images that
were uploaded on special dates (DD/MM/YYYY) like
(a) dates whose YYYY is divisible by DD,
(b) dates whose YYYY is divisible by MM.


## Question 2 

Publicly available datasets are often riddled with errors. In most cases, data visualization reveals such 2.
inconsistencies. In this task, you are provided with a dataset of an EV manufacturer that contains
multiple parameters. The parameters are mentioned in the header of the dataset.
– Upon inspection, it turns out that all the alphabets in the data have been mistakenly replaced with
their complement (where the complement of the ith letter of the alphabet is 27 − ith letter with the
case retained).
– Also, on keen observation, the SoH and SoC columns are interchanged for `Vehicle Number` AG.
– (Misreported entries) In addition to these errors, there are also obvious entries where the reported
`mileage` is non-zero despite SoC = 0.
– There are also rows in the dataset where certain parameters are missing. Since that those rows are
useless, you may remove them.
You are tasked with correcting these errors to produce a clean dataset and also Flag misreported entries
as “fake”. The dataset is located at `/var/home/Jan24/assignments/assignment_2`.


## Question 3

You are given a .csv in which each row is considered as a document (d) and the rows constitute the
collection of documents (D). Assume that only periods (‘.’) and commas (‘,’) are only punctuations
present in the documents. <br />
(a) Given a term t, return its TF-IDF index (accurate to 4 decimal places). <br />
(b) If no arguments are passed when calling question_3.sh, return the top-5 terms (with values) in
decreasing order of TF-IDF index.

## Question 4

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
