% Written by Dr. Seyedali Mirjalili
% To watch videos on this algorithm, enrol to my courses with 95% discount using the following links: 

% ************************************************************************************************************************************************* 
%  A course on "Optimization Problems and Algorithms: how to understand, formulation, and solve optimization problems": 
%  https://www.udemy.com/optimisation/?couponCode=MATHWORKSREF
% ************************************************************************************************************************************************* 
%  "Introduction to Genetic Algorithms: Theory and Applications" 
%  https://www.udemy.com/geneticalgorithm/?couponCode=MATHWORKSREF
% ************************************************************************************************************************************************* 

function [ population ] = initialization(M, N)
    for i= 1 : M
        vector=1:N;
        for j=1:N
            [vector, gene]=getIndex(vector);
            population.Chromosomes(i).Gene(j) = gene;
        end
    end 
end


function[vector, gene]=getIndex(vector)
    % get the range 
    len = length(vector);
    % randomly choose one element's index
    ub = len;
    lb = 1;
    ind = round((ub-lb).*rand(1,1) +lb);
    %after choosing the element , remove it from the vector
    gene = vector(ind);
    vector(ind) = [];    
end


