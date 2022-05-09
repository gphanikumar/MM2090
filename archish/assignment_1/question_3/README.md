# Question 3

## Problem Statement
Download the file screenshots.tar.gz from course page on the moodle site. The screenshots contain images of the terminal window with few commands that expose the hardware / configuration details of my laptop I use for this course instruction. You need to
make a clean pdf that contains two terminal images per page. This involves trimming of the images. Your script should take the pixel values for trimming as a user input and then do the task automatically for all the images in the directory and generate the pdf.
The solution includes the script and one sample page the output pdf.

### Hint
Install imagemagick with `sudo apt install imagemagick` and check man page of `convert` command.

### Application
You may need to trim a large set of images from an experiment and use them for image analysis, to create a video sequence and to extract events. High speed imaging of experiments is an important scientific technique.

## Solution

**Language Used:** `bash`

**Output:** [File](Screenshots.pdf)

### Usage

```bash
chmod 755 commands.sh
./commands.sh 
``` 