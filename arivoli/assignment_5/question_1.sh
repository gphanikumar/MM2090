#!/bin/python3
import sys
from sympy import *
from latex2sympy2 import latex2sympy

if len(sys.argv) != 2:
    print("Usage: question_1.sh functions.txt")
    sys.exit(1)

with open(sys.argv[1], 'r') as file:
    t1 = latex2sympy(file.readline().strip())
    t2 = latex2sympy(file.readline().strip())
x = symbols('x')
k = symbols('k')
F1 = fourier_transform(t1, x, k)
F2 = fourier_transform(t2, x, k)

conv = F1*F2
print(inverse_fourier_transform(conv, k, x))
out = latex(inverse_fourier_transform(conv, k, x))
print(out)
