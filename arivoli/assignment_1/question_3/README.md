# Question 3

## Problem Statement: 
In this exercise, you are provided with a file that contains two parts. The first 52 lines specify how each 3.
character from the alphabet is encoded in a number format [Aa-Zz], which is a function of the equivalent
ASCII values of each of the alphabets. The second part of the file (subsequent lines) contains encoded
values for each username/roll number. Your program must utilize the encodings to decode the encoded
names for each username in the second part of the file and output the names. Save the output of the
decoded file onto `output.txt`\
Use `curl` on the [website](https://id2090assignment1.s3.ap-south-1.amazonaws.com/Q3.txt) to obtain the file.

## Usage: 
```
./question_3.sh <the above URL>
```

## Output:
```
Username,Password
ae23b005,bhavesh
ae23b010,guhaan
..
<and so on>
```

### Brownie Points: 
For not hardcoding all the encodings and identifying the underlying function used
on the ASCII values of each character. Also, mention the approach you took to guess the function.

### Hint:
Try looking up on `gnuplot` and plot the encodings for subsequent ASCII values (alphabets) and
guess the function by its shape.
