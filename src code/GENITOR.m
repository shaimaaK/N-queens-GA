function [ newPopulation2 ] = GENITOR(population , newPopulation)

M = length(population.Chromosomes); % number of individuals 
%Elite_no = round(M * Er);

[~ , indx] = sort([ population.Chromosomes(:).fitness ] , 'ascend');
[~ , new_indx] = sort([ newPopulation.Chromosomes(:).fitness ] , 'ascend');
% The elites from the previous population
for k = 1 : M
    
    parent = population.Chromosomes(indx(k));
    child = newPopulation.Chromosomes(new_indx(k));
    %goal minimize fitness value
    if parent.fitness > child.fitness
        newPopulation2.Chromosomes(k).Gene  = newPopulation.Chromosomes(new_indx(k)).Gene;
        newPopulation2.Chromosomes(k).fitness  = newPopulation.Chromosomes(new_indx(k)).fitness;
    else
        newPopulation2.Chromosomes(k).Gene  = population.Chromosomes(indx(k)).Gene;
        newPopulation2.Chromosomes(k).fitness  = population.Chromosomes(indx(k)).fitness;
    end
end    

end