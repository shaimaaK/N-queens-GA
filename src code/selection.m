function [parent1, parent2] = selection(population)
M = length(population.Chromosomes(:));
[chrome_list_ind] = permutation(M,4);
ii=1; 
for i=chrome_list_ind 
    %load the fitness values, and soltion vec of the randomly selected chromosomes
    fit_val_pool.Chromosomes(ii).Gene=population.Chromosomes(i).Gene;
    fit_val_pool.Chromosomes(ii).fitness=population.Chromosomes(i).fitness;
    ii=ii+1;
end
[~ , sorted_idx] = sort([fit_val_pool.Chromosomes(:).fitness],'ascend');
%sort ascending (default) cuz the fittest is the smallest (MINIMIZATION PROBLEM)
%disp(sorted_idx)
parent1_idx = sorted_idx(1);
parent2_idx = sorted_idx(2);


parent1 = fit_val_pool.Chromosomes(parent1_idx);
parent2 = fit_val_pool.Chromosomes(parent2_idx);

end


% test case
% population.Chromosomes(1).Gene=[1 2 3 4];
% population.Chromosomes(1).fitness=4;
% 
% population.Chromosomes(2).Gene=[1 1 4 4];
% population.Chromosomes(2).fitness= 2;
% 
% population.Chromosomes(3).Gene=[1 2 231 4];
% population.Chromosomes(3).fitness=1;
% 
% population.Chromosomes(4).Gene=[1 44 3 4];
% population.Chromosomes(4).fitness=77;
% 
% population.Chromosomes(5).Gene=[1 7 3 4];
% population.Chromosomes(5).fitness=7;
% 
% population.Chromosomes(6).Gene=[1 2 88 4];
% population.Chromosomes(6).fitness=5;
% 
% population.Chromosomes(7).Gene=[1 2 865 4];
% population.Chromosomes(7).fitness=0;

