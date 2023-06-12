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


