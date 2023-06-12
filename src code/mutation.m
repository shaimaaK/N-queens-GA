function [child] = mutation(child, Pm)
Gene_no = length(child.Gene);
    for k = 1: Gene_no
        R1 = rand();
        if R1 < Pm
            for j=k+1:Gene_no
                R2 = rand();
                if R2 < Pm
                	%swap the values 
                    temp = child.Gene(k);
                    child.Gene(k)=child.Gene(j);
                    child.Gene(j)=temp;
                    break;
                end
            end
            break;
        end
    end

end

% test case
% child.Gene = [1,2,3,4,5,6,7];Pm=0.8;
