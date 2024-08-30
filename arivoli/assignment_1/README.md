# Assignment 1

## Question 1
You are provided with a shell script binary 1. hunt.sh.x. Only execute permissions are given to the script.
Upon running it, you’ll receive a unique `README` file and a unique `directory tree`. Navigate into the
directory to find a `README` file. Follow the instructions given in your respective `README` file, follow the
instructions at every stage and obtain the final key. Name your answer script as `question1.sh`, and
attach the key in this shell script. Executing your script should only output the key you find. Feel free
to use the man pages for commands as and when required. Happy hunting!

## Question 2
Recurrence relations are often encountered in modeling the dynamics of processes, analyzing algorithms, and generating sequences. 
The Fibonacci sequence is the simplest and most famous recurrence relation.
In this exercise, you are tasked with finding the n<sup>th</sup> term in a generalized recurrence relation given by:

 `af[n] = bf[n − 1] + cf[n − 2] for a, b, c ∈ R and f : N → R`

The coefficients a, b, c, and the first two values f[1] and f[2] will be passed (in order) as a file during input. 
Your program is expected to take in t test cases and output the n<sub>t</sub>th term for every test case.
Your program must check whether the correct input format is followed and throw an error if incorrect input is provided, also indicating the correct usage.

## Question 3
In this exercise, you are provided with a file that contains two parts. 
The first 52 lines specify how each character from the alphabet is encoded in a number format [Aa-Zz], which is a function of the equivalent ASCII values of each of the alphabets. 
The second part of the file (subsequent lines) contains encoded values for each username/roll number. 
Your program must utilize the encodings to decode the encoded names for each username in the second part of the file and output the names. 
Save the output of the decoded file onto `output.txt`. 

Use `curl` on the [website](https://id2090assignment1.s3.ap-south-1.amazonaws.com/Q3.txt) to obtain the file.
