function [chrome_list_ind] = permutation(chrom_size, per_num)
% 5 numbers permutation of any range of numbers
    vector= 1:chrom_size;
    chrome_list_ind=zeros(1,per_num);
    for i=1:per_num
        [vector, chromosome_ind]=getIndex(vector);
        chrome_list_ind(i) = chromosome_ind;
    end
  
end

function[vector, chromosome_ind]=getIndex(vector)
    % get the range 
    len = length(vector);
    % randomly choose one element's index
    ub = len;
    lb = 1;
    ind = round((ub-lb).*rand(1,1) +lb);
    %after choosing the element , remove it from the vector
    chromosome_ind = vector(ind);
    vector(ind) = [];    
end
