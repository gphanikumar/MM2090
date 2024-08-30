# Question 3

You are given a .csv in which each row is considered as a document (d) and the rows constitute the
collection of documents (D). Assume that only periods (‘.’) and commas (‘,’) are only punctuations
present in the documents. <br />
## (a)
Given a term t, return its TF-IDF index (accurate to 4 decimal places)
### Input:
id, document
1, this is a sample sentence.
2, there are 3 sentences in this sample.
3, this is a placeholder sentence.
### Usage:
./question_3.sh document.csv sentence
### Output:
0.0553
## (b)
If no arguments are passed when calling question_3.sh, return the top-5 terms (with values) in
decreasing order of TF-IDF index.
### Input:
id, document
1, this is a sample sentence.
2, there are 3 sentences in this sample.
3, this is a placeholder sentence.
### Usage:
./question_3.sh document.csv
### Output:
placeholder, 0.0667
a, 0.0553
is, 0.0553
sentence, 0.0553
there, 0.0476
