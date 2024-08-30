# Endsem
## Question 1 - Path planning
### Context 
- [RRT](https://en.wikipedia.org/wiki/Rapidly_exploring_random_tree) is a sampling-based path planning algorithm used in autonomous robotics systems when the map of the environment is available.
- The idea is to sample random points and add them to the nearest node till a point near the goal is sampled.
- The ’nearness’ is defined by you as a tolerance parameter for the algorithm. You should also define a max distance parameter that will be used if the distance from the nearest node to the randomly chosen point is larger than the max distance value and a point at the max distance along the line joining the nearest node and the randomly chosen point.
-  If an obstacle is between the nearest node and the randomly chosen point, discard this point and choose another point randomly.

### Task 
Your task is to write a program that plots a rectangle of some arbitrary width and height, which acts as the walls of the environment, and place 3-4 obstacles, which are rectangles of around one-tenth the
size of the bounding wall. The placement of the obstacles can be random or fixed. Choose two points - start and goal. With this, you are expected to do the following:
- Implement the RRT algorithm in this environment.
- Since RRT is a random sampling algorithm, the path produced by it is not smooth, which in real life is not a feasible trajectory. So, use the path from the previous part and do trajectory smoothing on it.
- RRT also doesn’t consider the spacing necessary between obstacles and the path that a bot might follow. So, implement RRT such that the random points are more likely at a spacing away from the edges of the obstacle. This spacing is a parameter you can set as you see fit.
- A greedy approach would be choosing points nearer to the goal more likely. Implement this in RRT algorithm. The nearer here can be any logical distance function such as L1 or L2 norm.
- Write a report on your implementation of the previous parts and give plots on the average number of nodes needed to reach the goal - this is done by running the simulation a large number of times and taking the average; a good number would be 1000 for each variant. Setup an environment as shown Figure 1 to check your implementation of RRT from part 3 and write about it in the the report.

## Question 2 - Automata
### Context
- In this course, you have learned about Regular Expression and may have wondered how a regular expression matching works.
- Basically the regular expression is converted to a Finite state machine (FSM).
- FSM has several states and transitions that define the machine’s behavior. It reads an input string one character at a time, and each makes the machine transition. That process is often called consuming a character because each character makes a single change in the machine.
### Task
In this task, you will implement a basic regex engine that converts a regular expression into a basic finite state machine, in which we pass a string and match the expression.• Takes as argument, a file (press.txt), whose only line is pressure profile along the z-direction, as a string convertible to a Sympy expression
You need to do the following:
- Implement a program that converts a regular expression into an FSM. A suggestion would be to use OOPS to build the state machine.
- Write a report on your implementation of a regular expression engine and give the finite state machine’s state diagram for the below cases.
The FSM should be able to match:
- Direct matches
- Any number of characters
- Wildcard Character
- Multiple matches
### Input
Test case 1: <br />
Regular Expression: abcd<br />
Sample string: abcdef<br />
Test case 2:<br />
Regular Expression: a*c*<br />
Sample string: baacc<br />
Test case 3:<br />
Regular Expression: a*<br />
Sample string: baaccaa<br />

### Sample Output
Sample Output:<br />
Output 1:<br />
`abcd`ef<br />
Output 2:<br />
b`aacc`<br />
Output 3:<br />
b`aa`cc`aa`<br />

## Question 3 - Reflection
Write a LaTex report which contains your observations and the overall conclusion you got from performing the tasks above.

