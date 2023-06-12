function  [fitness_value] = fitness(X)
    % we need to minimize the fitness value
    mat=convert_geno2pheno(X);
    fitness_value=0;
   % due to the initialization , the horizontal and vertical conflict are
   % eliminated , we will only check in the obj for the diagonal conflict
   %type 1 : diagonal
   %type 2 : anti-diagonal
   for queen_ind =1:length(X) % calculate the fitness of each queen
      fitness_value=fitness_value+traverseMat(X,mat,queen_ind); 
   end
  


end


function mat=convert_geno2pheno(X)
   % convert from genotype to phenotype 
   mat = zeros(length(X));
   col=1;
   for row=X
       mat(row,col) = 1;
       col=col+1;
   end
   %disp(mat)
end