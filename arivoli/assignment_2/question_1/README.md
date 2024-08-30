# Question 1 

Web scraping is the process of extracting data from a website or any online source. In this era of Large
Language Models, web scraping has become commonplace for gathering large quantities of data. Often,
the data that is gathered is unusable and requires pre-processing. In this task, you are required to fetch
data from an online source and perform some basic manipulations to prepare the data.

NASA maintains an [archive](https://apod.nasa.gov/apod/archivepixFull.html) of photographs captured by various enthusiasts, along with a brief explanation written by a professional astronomer. You are tasked to create a list of titles of these images that
were uploaded on special dates (DD/MM/YYYY) like
(a) dates whose YYYY is divisible by DD,
(b) dates whose YYYY is divisible by MM.

## Usage:
./question_1.sh

## Output:
Two `.csv` files − `answer_1a.csv` and `answer_1b.csv` for the corresponding parts.
