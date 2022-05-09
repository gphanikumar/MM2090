# Question 2

## Problem Statement
Create a make file that has the following behavior when invoked as given below. The value of n for the number of days should be configurable using a shell variable `$MODPERIOD`. Default can be taken as 5 days. Except to copy the Makefile to a directory, the user is not expected to give any further input by hand.

| make 		  | Output the usage pattern as help |
| make list	  | Recursively list all files in the current directory modified in the last n days |
| make backup | Copy all the files listed as above to a temporary directory and create a tar file for it. Name of the tar file shall be like backup-31May2021.tar if the command was invoked on 31 st May, 2021. |

### Output Required
The code, screenshots showing its behavior.

### Application
One can place scripts in the cron directory to run them automatically at certain times. One can have a script there to backup the files that are being currently worked on to avoid accidental deletion.

## Solution

**Language Used:** `make`

**Output:** [File](backup-06June2021.tar.gz)

### Usage
```bash
make
make list
make backup
```