# Assignment 5
## Question 1 - Transform your chances
### Context 
- The ability of Fourier Transform to approximate a signal as an infinite sum of sinusoidal waves of integral multiples of some frequency, the ability to transform a time-series data into the frequency domain, has a variety of applications in Solving of Dirichlet PDEs, Von Neumann Stability Analysis of CFD schemes, Analysis of Complicated Circuits, etc.
- Its discrete version, discrete Fourier Transform DFT, is crucial to analyzing images in terms of noise, details, structure, filters required, etc.

### Task 
Fourier Transform is often used to model convolution operation between two functions, where each function is applied a Fourier Transform and multiplied, to get the Fourier Transform representation of the convoluted function. Your task is to create a Sage / Sympy script that takes the functions to be convolved, as arguments from a plaintext file, performs convolution using Fourier Transform, and outputs the final convolved function.1 You may assume that the functions given in the input are defined over x ∈ (−∞, +∞).

## Question 2 - Poised for Poiseuille flow
### Context
- The Transport phenomenon and associated equations are derived from the continuum hypothesis, which governs the fluid flow and its related properties.
- They are predominantly used in mechanical, chemical, metallurgy, ocean engineering, and mathematics, too, to predict fluid properties at a given time and location.
### Task
Create a Sympy script which
• Takes as argument, a file (press.txt), whose only line is pressure profile along the z-direction, as a string convertible to a Sympy expression
• Computes the axial velocity symbolically, step-by-step using the above approach.
• Creates a C++ file (vel.cpp) which takes in argument as the radial distance from the axis and outputs the corresponding z-velocity to the output stream.
• Note that for this specific question, for the sake of simplicity, you can take the constants µ, R to be unity.

## Question 3 - Reflection
Write a LaTex report which contains your observations and the overall conclusion you got from performing the tasks above.
