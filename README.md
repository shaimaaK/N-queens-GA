# Solving N-queens problem using Genetic Algorithm
Evolutionary Approach is studied for solving the N-Queens problem using Genetic Algorithm, implemented as part of the Evolutionary Computation Course 
in my Masters degree in AI.
The project analyzes the N-Queens problem and defines the cost function, solution represntations as(Phenotype, Genotype) where the Genetic Algorithm is applied and experimented
with different chess board dimensions (N x N). My solution is finally visualized in matlab app where users have live run of the evolutionary algorithm after entering the 
parameters of their experiments then the results are directly visualized and easily analyzed in terms final fitness, final solution, solution convergence curve over generations.<br>
![image](https://github.com/shaimaaK/N-queens/assets/54285485/030fe282-3be3-42a2-beb4-fe1f3c48ddcc)
## Table of Content
- [Abstract](#abstract)
- [N Queens Problem](#n-queens-problem)
- [Methodologies](#methodologies)
- [Experiments and Results](#experiments-and-results)
- [Simulation](#simulation)
- [Resources](#resources)
  
## Abstract 
The N-Queens puzzle is the problem of placing N number of queen pieces on the chessboard where no queen is placed in a location that allows it to attack the
rest of queens placed on that same NxN chessboard. The N-Queens problem is famously solved is various ways namely recursion algorithms,, backtracking algorithms,
constraint programming, logic programming, and using Evolutionary Algorithms. The difficulty of the problem is elevated by increasing the size of the chess board.
This study is addressing the N-Queens problem using the state-of-art population-based Genetic Algorithm(GA)  utilizing its evolutionary operators such as 
natural selection, crossover, and mutation. The implementation was proven to be successful and efficient through simulated experiments using matlab.
 
## N Queens Problem
One of the oldest chess based puzzles is known, as The N Queens Problem.It is known that the maximum number of queens that can be placed on an N x N chessboard, so that no two attack one another, is N. The eight queens problem is a classical combinatorial problem of putting N queens on an NxN chessboard so that none of them is able to capture any other such as the solution depicted in the figure. The solution is the placement of the N-queens in which no queen is endangered by any other queen on that chessboard.  This problem can be generalized as putting N non-attacking queens on an N x N chessboard[1]. The number of different ways the N queens can be placed on an N x N chessboard approximated to N! which indicates large search space for large values of N. It’s very easy to expand (and contract) this puzzle to other sized chess boards.
Trivially, there is only one solution for a 1 x 1 board, and it’s not hard to see that there are no possible solutions for a 2 x 2 or 3 x 3 sized board[1].<br>
In summary N Queens problem : 
1. N number of Queens are placed on NxN chess board
2. The solution is the placement of the N-queens in which no queen is endangered by any other queen on that chessboard
3. A queen can move diagonally, horizontally and vertically 
4. The Search space is N!


## Methodologies
###  Solution Representation
Each of the solutions in the population represents a single candidate N queens locations combination and each of the solutions is signified as a vector 
x = (Q1, Q2, . . . , Qn), where n represents the column locations in the chessboard of dimension( n x n ) while the value of each variable Q denotes its row location on the chessboard. This solution representation helped building better initial population by choosing permutation solution representation thus guaranteeing each queen is in a different column and row combination. As a result, the objective function (solution feasibility check) emphesize checking diagonally and anti-diagonally conflict among the queens on the chessboard.
###  Objective Function
The fitness value of each queen is indicated by the number of other queens on the board that it can attack each with one move. The goal here is to minimize the number of candidate endangered queens though placing each queens by which each queen is not threatened by any other. The fitness value of a solution is the summation of all queens fitness value.
![image](https://github.com/shaimaaK/N-queens/assets/54285485/80d70170-5ddd-4164-9cbc-c51bd5121e70)

## Experiments and Results
The experiments on N Queens puzzle solver based on GA are implemented on the following board sizes:
- 4 X 4
- 8 X 8
- 16 X 16 </ul>
![image](https://github.com/shaimaaK/N-queens/assets/54285485/1d74d0fc-7ad1-473b-bd5a-dc4af44246e4)
The following table shows a brief description of the implementation

| **Method**                             	| **Name**        	                 |
|-----------------------------------------|------------------------------------|
| **representation**              	      |    <br>permutation    	           |
| **Recombination type** 	                |    <br>Cut and Crossfill crossover |
| **Recombination probability**         	|    <br>100                       	 | 
| **Mutation type**     	                |    <br>swap                      	 |
| **Mutation probability**    	          |    <br>80     	                   |
| **Parent Selection**                  	|    <br>Best 2 out of random 5      |
| **Survival Selection** 	                |    <br>Replace Worst     	         |
| **Population Size**                   	|    <br>100      	                 | 
| **Number of Offspring**                	|    <br>2     	                     |
| **Initialization**    	                |    <br>Random-permutated           |
<br>



The experiments showed good performance where the algorithm showed an efficient and timely performance. The main challenge and limitation of my work are evedint in the experiments on boards larger than 16 which did not succeed as the search space becomes large and complex hence requires integrating powerful techniques and specialized operators to search the solution space more effectively and efficiently.
 
 ## Simulation
 For seemless experince and easy testing of the implementation, I have included an app version that can be executed from matlab using [matlab app designeer](https://www.mathworks.com/products/matlab/app-designer.html). The simulation has the default parameter values that obtains the N Queen puzzle up to N = 16
  
  ## Resources
  [1] I. Martinjak, M. Golub, Comparison of heuristic algorithms for the nqueen problem, in: 2007 29th International Conference on Information
Technology Interfaces, IEEE, 2007, pp. 759–764.
  
