function [child1 , child2] = crossover(parent1 , parent2, Pc, crossoverName)
switch crossoverName
    case 'single'
        Gene_no = length(parent1.Gene);
        ub = Gene_no - 1;
        lb = 1;
        Cross_P = round (  (ub - lb) *rand() + lb  );
        
        Part1 = parent1.Gene(1:Cross_P);
        %Part2 = parent2.Gene(Cross_P + 1 : Gene_no);
        child1.Gene = Part1;
        start_ind=Cross_P+1;
        %disp(child1.Gene);
        while(length(child1.Gene) < Gene_no)
            %disp(child1.Gene);
            if find(child1.Gene== parent2.Gene(start_ind))
            else
                child1.Gene(end+1)=parent2.Gene(start_ind);
            end
            if start_ind == length(parent2.Gene)
                start_ind=1;
            else 
                start_ind=start_ind+1;
            end
            
        end
        
        Part1 = parent2.Gene(1:Cross_P);
        %Part2 = parent1.Gene(Cross_P + 1 : Gene_no);
        child2.Gene = Part1;
        while(length(child2.Gene) < Gene_no)
            if find(child2.Gene== parent1.Gene(start_ind))
            else
                child2.Gene(end+1)=parent1.Gene(start_ind);
            end
            if start_ind == length(parent1.Gene)
                start_ind=1;
            else 
                start_ind=start_ind+1;
            end
            
        end
        
        
    case 'double'
        Gene_no = length(parent1);
       
        ub = length(parent1.Gene) - 1;
        lb = 1;
        Cross_P1 = round (  (ub - lb) *rand() + lb  );
        
        Cross_P2 = Cross_P1;
        
        while Cross_P2 == Cross_P1
            Cross_P2 = round (  (ub - lb) *rand() + lb  );
        end
        
        if Cross_P1 > Cross_P2
            temp =  Cross_P1;
            Cross_P1 =  Cross_P2;
            Cross_P2 = temp;
        end

        Part1 = parent1.Gene(1:Cross_P1);
        Part2 = parent2.Gene(Cross_P1 + 1 :Cross_P2);
        Part3 = parent1.Gene(Cross_P2+1:end);
        
        child1.Gene = [Part1 , Part2 , Part3];
        
        
        Part1 = parent2.Gene(1:Cross_P1);
        Part2 = parent1.Gene(Cross_P1 + 1 :Cross_P2);
        Part3 = parent2.Gene(Cross_P2+1:end);
        
        child2.Gene = [Part1 , Part2 , Part3];
end
%end switch

R1 = rand();

if R1 <= Pc
    child1 = child1;
else
    child1 = parent1;
end

R2 = rand();

if R2 <= Pc
    child2 = child2;
else
    child2 = parent2;
end

end

%test case
% parent1.Gene=[1,2,3,5,5,4,2] ; parent2.Gene=[4,7,3,6,5,6,3]; Pc=1; crossoverName='single';