# Question 2

## Problem Statement
Consider a square array of 128 * 128 pixels in size. Randomly color the pixels as either black or white by visiting each pixel and generating a random number r between 0 and 1. If r < 0.5, assign the pixel a black color. If r >= 0.5, assign the pixel a white color. Perform the following operation repeatedly: 

Generate two random integers (i,j) between 1 and 128; Visit the pixel at location (i,j) and look at what kind of immmediate neighbors it has (like or unlike). Swap its color with one of its immediate neighbors to increase the total number of like neighbors. After each N (say N = 100) steps, create an image from the array and store it as an image. See how the pattern evolves as you keep making these operations over and over again. Comment on your observations.

### Output Required
The octave code, a report showing representative snapshots of the image.

### Application
This process displays how segregation evolves in nature as well as in social circles. The two colors represent either two types of atoms or two opposing views among people. The swap indicates rearrangement of atoms or friends. The pattern evolution has deeper meaning about the interaction between atoms or the polarization among people.

## Solution

**Language Used:** `octave`

**Output:** [Video](Iteration.avi)

**Jupyter Notebook:** [Notebook](movement.ipynb)


