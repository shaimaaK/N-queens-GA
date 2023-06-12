clear
clc
%% controling paramters of the GA algortihm
Problem.obj = @fitness;

Problem.nVar = input('The size of chess board NxN :\n');

M = 100; % number of chromosomes (cadinate solutions)
N = Problem.nVar;  % number of genes (variables)
MaxGen = 1000;
Pc = 1; %probability of recombination 
Pm = 0.8; %probability of mutation
visualization = 1; % set to 0 if you do not want the convergence curve 

[BestChrom,cgcurve]  = GeneticAlgorithm (M , N, MaxGen , Pc, Pm , Problem.obj , visualization);
disp('The best chromosome found: ')
BestChrom.Gene
disp('The best fitness value: ')
BestChrom.Fitness
