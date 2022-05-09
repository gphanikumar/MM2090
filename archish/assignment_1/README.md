# Assignment 1

## [Question 1](question_1)

Download and use [RollList.csv](https://raw.githubusercontent.com/gphanikumar/MM2090/master/scripts/RollList.csv) for this question. Assume that each year the hostel fee of freshers is incremented by 10 percent of the previous year’s fees. This fee you pay as a fresher continues to be paid every semester thereafter without increment. Eg., fees for students who joined in 2018 will be lower than those who joined in 2019, but the 2019 batch will pay the same fees every semester and so on. The students who joined in the
year 2017 had to pay INR 20,000 as hostel fees. The solution includes a script to calculate and the output of total fees received this
semester by the hostel administration from the students on the Roll List.

## [Question 2](question_2)

As part of data file submission to a platform, the administrator needs to create a set of initial passwords for the students. The password creation is done in the following way. The first part of the password is department code in capital letters followed by the numeric part
of the roll number (the last 3 characters of the roll number) followed by the length of the string in their name (this will also count the spaces). Followed by the program in which the student is enrolled in small letter. For example, if the roll number is ME18B009 and the name is Bharath Chandar then the password will be ME00915b. Use the RollList.csv file available from the above question and write a script to generate the password for all the students. The solution includes the script and the password list.

## [Question 3](question_3)

Download the file screenshots.tar.gz from course page on the moodle site. The screenshots contain images of the terminal window with few commands that expose the hardware / configuration details of my laptop I use for this course instruction. You need to
make a clean pdf that contains two terminal images per page. This involves trimming of the images. Your script should take the pixel values for trimming as a user input and then do the task automatically for all the images in the directory and generate the pdf.
The solution includes the script and one sample page the output pdf.

## [Question 4](question_4)

Discuss within your group and pick one hardware item type that is different from the rest of the group. The groupings are listed in the roll list in the folder for the course on google drive. Look up the internet to identify at least 3 latest entries of that hardware item and put down their specs. Comment what kind of gadgets / workstations / servers / clusters from OEMs include such a hardware item. Give the source of your information. (a) CPU (b) GPU (c) DRAM (d) SATA hard disc (e) Network switches for cluster (f) Network card. The solution includes a tabular listing of specs along with source of information as a
reference below.

## [Question 5](question_5)

Download the transcripts of text chat from the google drive folder for this course into a folder. Create a script that can calculate your attendance as a percentage by looking for your roll number in each of the files. The solution includes the script, total number of transcript files considered, lecture numbers missed and attendance percentage.

## [Question 6](question_6)

In the following URLs, the atomic radii are given as a list that you can readily copy-paste into a csv file: [Link 1](http://crystalmaker.com/support/tutorials/atomic-radii/index.html) or [Link 2](https://en.wikipedia.org/wiki/Atomic_radii_of_the_elements_(data_page)). Skip empty rows as needed. Pick an element that has the atomic number ending with the
same digit as your roll number and list all elements whose atomic radii are within a certain percentage. Choose this percentage to be 10% to start with and increase if needed to be able to list at least 3 elements that are of comparable size. The solution includes your script, the element chosen, its radius in picometers, criterion for closeness in size and the list of elements that are close in size.