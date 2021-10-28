# Assignment 6

## [Question 1](question_1)

Load an image you took using your mobile camera. Look up kernel operations and apply those programmatically on your image to perform the following actions (a) increase brightness by 20% (b) increase contrast by 50%, (c) perform a gamma correction using gamma value of 1.2 (d) Invert the image ie., newvalue = 255 – oldvalue and (e) detect the edges in the image. Create a brief report with these images and the code snippets of what you did.

## [Question 2](question_2)

Consider a square array of 128 * 128 pixels in size. Randomly color the pixels as either black or white by visiting each pixel and generating a random number r between 0 and 1. If r < 0.5, assign the pixel a black color. If r >= 0.5, assign the pixel a white color. Perform the following operation repeatedly:

Generate two random integers (i,j) between 1 and 128; Visit the pixel at location (i,j) and look at what kind of immmediate neighbors it has (like or unlike). Swap its color with one of its immediate neighbors to increase the total number of like neighbors. After each N (say N = 100) steps, create an image from the array and store it as an image. See how the pattern evolves as you keep making these operations over and over again. Comment on your observations.


