#!/usr/bin/bash

# User-defined value for sigma
#Sigma is the minimum value of error that the Newton-Rhapsom method must be less than for the loop to break
sigma=0.0001
a=$1
# Create a Sage script file to define the plane and calculate distances
cat >sage_script.sage <<EOF
from sage.all import *

# Function to calculate distance of plane from a point
def distance_from_plane_square(x, y, z, points):
    squared_distances = [(x * point[0] + y * point[1] + z * point[2] - 1) ** 2 for point in points]
    return sum(squared_distances)

# Define variables
x, y, z = var('x y z')

# Initialize theta with random values

# Initialize theta with random values
initial_theta = matrix([[randrange(-10, 10)], [randrange(-10, 10)], [randrange(-10, 10)]])
initial_theta = matrix([[0], [0], [0]])

theta = initial_theta
print('Initial Theta:', theta.transpose())

# Read points from file
points = []
with open('$a', 'r') as f:
    next(f)  # Skip the first line
    for line in f.readlines():
        coords = line.strip().split(',')
        point = vector([float(coord) for coord in coords])
        points.append(point)

# Initialize iteration count
iteration = 0
f = distance_from_plane_square(x, y, z, points)
# Loop until error is less than sigma or maximum iterations reached
while distance_from_plane_square(theta[0, 0], theta[1, 0], theta[2, 0], points) > $sigma:
    # Calculate error
    error_value = f.subs({x: theta[0, 0], y: theta[1, 0], z: theta[2, 0]})


# Calculate Hessian matrix and gradient matrix
    hessian_matrix = matrix([[diff(diff(f, x), x), diff(diff(f, x), y), diff(diff(f, x), z)],
                             [diff(diff(f, y), x), diff(diff(f, y), y), diff(diff(f, y), z)],
                             [diff(diff(f, z), x), diff(diff(f, z), y), diff(diff(f, z), z)]])

    gradient_matrix = matrix([[diff(f, x)], [diff(f, y)], [diff(f, z)]])

    # Substitute values into Hessian and gradient matrices
    hessian_matrix = hessian_matrix.subs({x: theta[0, 0], y: theta[1, 0], z: theta[2, 0]})
    gradient_matrix = gradient_matrix.subs({x: theta[0, 0], y: theta[1, 0], z: theta[2, 0]})
# Calculate delta theta and update theta
    try:
        delta_theta = hessian_matrix.inverse() * gradient_matrix
        theta -= delta_theta
    except Exception as e:
        print('Error occurred during theta update:', e)

    # Calculate error after theta update
    updated_error_value = f.subs({x: theta[0, 0], y: theta[1, 0], z: theta[2, 0]})

    # Increment iteration count
    iteration += 1

# Print final optimal values and number of epochs
print('Optimal Theta:', theta.transpose())
print('Epochs:', iteration)
EOF

# Execute the Sage script
sage sage_script.sage
