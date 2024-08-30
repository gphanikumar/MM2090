# Assignment 4
## Question 1 - Breaking The Spectre
### Context 
- Spectral theorem is a very powerful tool in the field of linear algebra, which applications are diverse
- Rank-1 decomposition of matrices finds a lot of applications in creation of quantum logic gates and analysis and prediction for a variety of inputs.
- The spectrum of the Hermitian operators used in quantum mechanics like Hamiltonian (H) and momentum operators, gives us the physical observables like energy, momentum.
- Eigenvalue decomposition of matrices using spectral theorem finds a variety of uses in machine learning, for eg. Principal Component Analysis (PCA), Spectral Clustering, etc.
- It also finds use in Harris Corner Detection Algorithm, in the field of Computer Vision, where the magnitude of eigenvalues of the intensity matrix, gives us information of whether a given point in a window of pixels is a corner, edge or a flat patch
- It’s used for converting an ODE to a simple eigenvalue problem, which is much easier to solve.

### Task 
Your task is to create a script, which takes as an argument, a YAML serialized file, containing Matrix object inside it (consider this matrix as A, until this discussion) and gives as output the following values:
- The eigenvalues of the matrix A,
- The unitary matrix U which diagonalizes A (i.e: A = UDU∗, where D is a diagonal matrix),
- The diagonal matrix D resulting from the previous step,
- The spectral decomposition of the matrix A,
- The classification of the matrix A into any one of these special matrices (Hermitian, Unitary, Positively Semidefinite, Positively Definite, or just Normal matrix). (Hint: use step a)

## Question 2 - Optimaze
### Context
- Optimization is at the core of machine learning. Every abstract machine learning problem is converted and formulated as a mathematical problem with the help of statistics and probability, where a particular objective function is to be maximized or minimized, optionally following a given set of constraints.
- This also finds use in Mechanical Sciences, where the strength of a part is to be maximized by adding material to it, but it increases the cost of the part.
- In Chemical Engineering, wherein a continuous process, there needs to be an optimal rate of reactant to be supplied for the reaction to give maximum yield, but not so much for the reactant to be wasted, which lowers its cost-competitiveness, optimization is inevitably used.
- It is a crucial aspect of the market economy, where companies compete to increase profits and
reduce costs.
### Task
You are given a set of (x, y, z) coordinates of points in points.csv (Program files are available in /var/home/Jan24/assignments/assignment_4). Your task is to find the optimal equation of the plane, fitting the behavior of the system of points, to the best possible extent.
The equation of the plane is taken to be ax + by + cz = 1, for the rest of the discussion.
Here in the following discussion,
1. A refers to matrix A, and b refers to a vector b,
2. The superscript t refers to the t-th time step,
3. θt refers to vector (a, b, c) and ∆θt refers to vector (∆a, ∆b, ∆c).

## Question 3 - Reflection
Write a LaTex report which contains your observations and the overall conclusion you got from performing the tasks above.

