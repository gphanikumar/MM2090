#!/bin/python3

import sys 
import sympy as s
from sympy import *
from latex2sympy2 import latex2sympy
if len(sys.argv) != 2:
         print("Usage: question_2.sh press.txt")
         sys.exit(1)

with open(sys.argv[1], 'r') as file:
         exp = s.sympify(file.read().strip())

f = s.diff(exp, 'z')
x, R = s.symbols('x R')
y, a, b = s.Function('y')(x), 1/x, 0

eq = s.Eq(y.diff(x, x) + a * y.diff(x) + b * y, f)
boundary_conditions = {y.subs(x, 1): 0, y.diff(x).subs(x, 0): 0}
soln = s.dsolve(eq, y, ics=boundary_conditions)

velocityexp=soln.rhs
vcpp=s.ccode(velocityexp)
#print(velocityexp)

executable = f'''
#include <iostream>
#include <cmath>
double velocity(double x) {{
    return {vcpp};
}}
int main(int argc, char* argv[]) {{
    if (argc != 2) {{
        std::cerr << "Usage: " << argv[0] << " <value of x>" << std::endl;
        return 1;
    }}
    double x = std::stod(argv[1]);
    double vcpp = velocity(x);
    std::cout << std::abs(vcpp) << std::endl;
    return 0;
}}
'''
with open('v.cpp','w') as f:
        f.write(executable)

import subprocess
compile_process = subprocess.run(["g++", "-o", "vel.cpp", "v.cpp"], stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
