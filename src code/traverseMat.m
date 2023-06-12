function [fit_val]=traverseMat (X,mat,indx)
    % location of gene in the vec = (row=value, col = index)
    gene = X(indx);
    %indx=find(X == gene);
    fit_val=0;
    col_right = indx+1; 
    col_left = indx-1;
    if length(X) > gene
        for row=gene+1:length(X)
            if col_right <= length(X) || col_left > 0 %validate the location
                if col_right <= length(X)  % aka potential danger
                   if mat(row,col_right ) == 1
                        fit_val = fit_val+1;
                   end 
                end
                if col_left > 0  % aka potential danger
                    if mat(row,col_left ) == 1
                        fit_val = fit_val+1;
                   end 
                end
                % move to the next columns[update next scanned location]
                col_right=col_right+1;
                col_left=col_left-1;
             end      
        end
    end
    %%%upper half of the matrix
    if gene > 1
        col_right = indx+1; 
        col_left = indx-1;
        for row=gene-1:-1:1
            if col_right <= length(X) || col_left > 0 %validate the location
                if col_right <= length(X)  % aka potential danger
                   if mat(row,col_right ) == 1
                        fit_val = fit_val+1;
                   
                   end 
                end
                if col_left > 0  % aka potential danger
                    if mat(row,col_left ) == 1
                        fit_val = fit_val+1;
                        
                   end 
                end
                % move to the next columns[update next scanned location]
                col_right=col_right+1;
                col_left=col_left-1;
             end      
        end
    %disp("from up and down : "+fit_val);    
    end
end