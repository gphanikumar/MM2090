# Question 2


## Problem Statement
As part of data file submission to a platform, the administrator needs to create a set of initial passwords for the students. The password creation is done in the following way. The first part of the password is department code in capital letters followed by the numeric part
of the roll number (the last 3 characters of the roll number) followed by the length of the string in their name (this will also count the spaces). Followed by the program in which the student is enrolled in small letter. For example, if the roll number is ME18B009 and the name is Bharath Chandar then the password will be ME00915b. Use the RollList.csv file available from the above question and write a script to generate the password for all the students. The solution includes the script and the password list.

### Hint 
You can use a shell script or awk script to achieve this.

### Application
Applications may need to generate clear text passwords according to certain rules to be given to first time users.


## Solution

**Language Used:** `awk`

**Output:** [File](Password.csv)

### Usage
```bash
chmod 755 password.apk
./password.awk < RollList.csv > Password.csv
```