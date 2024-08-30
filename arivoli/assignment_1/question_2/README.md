# Question 2

## Problem Statement: 

Recurrence relations are often encountered in modeling the dynamics of processes, analyzing algorithms, and generating sequences. 
The Fibonacci sequence is the simplest and most famous recurrence relation.
In this exercise, you are tasked with finding the n<sup>th</sup> term in a generalized recurrence relation given by:

 `af[n] = bf[n − 1] + cf[n − 2] for a, b, c ∈ R and f : N → R`

The coefficients a, b, c, and the first two values f[1] and f[2] will be passed (in order) as a file during input. 
Your program is expected to take in t test cases and output the n<sub>t</sub>th term for every test case.
Your program must check whether the correct input format is followed and throw an error if incorrect input is provided, also indicating the correct usage.

## Usage: 
```
./question_2.sh initial.txt testcases.txt
```

## Input: 
`initial.txt`\
1, 1, 1, 1, 1\
`testcases.txt`\
3\
14\
27\
18

## Output:
377\
196418\
2584
