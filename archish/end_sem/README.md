# Final Assignment

## [Question 1](question_1)

Generate 10 random numbers y i between -1 and +1. Use these as points (x_i , y_i ) where x_i =i and show them as a scatter plot. Fit a higher order polynomial over these points to generate a pattern of how a random noise would look like. Sample the polynomial to generate about 100 points in the interval x_1 to x_10 . Superpose a plot of this data along with original points (x_i , y_i ). Identify the peaks (location and height) programmatically. Print them out and confirm those with the plot.

## [Question 2](question_2)

Consider the following sample images. Visually you can count that the number of objects in the images are 3, 2 and 5, respectively. Write a program that can take these images as inputs and report the number of objects as output. Assume that the objects are colored uniformly but different from the background which is also uniform. Do not assume the objects to be of same size or shape.

## [Question 3](question_3)

Consider a temperature sensor placed near a valuable asset in a highly secure space. It records the local temperature every 5 seconds and writes it to a stream. The temperature data is flushed such that it keeps the data of only one hour. That is, you can view a window of only 720 data points at a time. Each new data point entering the window flushes the oldest data point out. Write two
programs that do the following tasks:

* Program-A when executed will continuously send temperature data that looks almost flat (say, room temperature with a small random noise within 0.5 Kelvin). This is to simulate the data coming from the temperature sensor. At predetermined instance, introduce a spike (sudden increase of temperature by 10 K) for 10 seconds and revert back to room temperature. This spike is caused due to the presence of an intruder.

* Program-B keeps reading the incoming data, detects the spike and reports the instance when it
took place. Verify if the detection is accurate.


## [Question 4](question_4)

Simulate the Langton’s ant. Look up wikipedia about what this problem is. Make sure you provide the formulation, program implementation and sample images to verify the behaviour of the ant motion in the box. Consider a box of size 64 \* 64 for your problem.

## [Question 5](question_5)

Seam carving is a special image manipulation. Look it up on Wikipedia to understand what it means. You are free to assumptions to simplify the problem defintion as you require. Choose an image that contains two objects of interest separated by large distance and illustrate how your implementation of seam carving works on it.

## [Question 6](question_6)

Consider a transformation by which a function is transformed to another function where m and c are slope and intercept of the original curve at different points on the curve represented by y as function of x. The envelope of lines of slope m drawn at each value of c has the same shape as that of the curve drawn using the points (x,y). This is illustrated a parabola as shown in the figures below. Write a program that converts a function given as y(x) to the new form either graphically or analytically. Make sure your process works even when the function y(x) is changed to any other smooth and well behaved function.