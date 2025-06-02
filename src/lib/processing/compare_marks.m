function [CC] = compare_marks(mark_1, mark_2, chopmark)
    
    n1 = length(mark_1); n2 = length(mark_2);
    if n1 >= n2
        [CC,CL] = best_correlation(mark_1,mark_2);
        Mark1aligned = circshift(mark_1,-CL);
        if chopmark
            Mark1aligned = Mark1aligned(1:n2); %RP Chopping M1 to be the size of M2
            Mark2aligned = mark_2;
        else
            Mark2aligned = [mark_2;mean(mark_2)*ones(n1-n2,1)];
        end
    %     [CC,CL] = best_correlation(Mark1aligned,Mark2aligned);
    else
        [CC,CL] = best_correlation(mark_2,mark_1);
        Mark2aligned = circshift(mark_2,-CL);
        if chopmark
            Mark1aligned = mark_1;
            Mark2aligned = Mark2aligned(1:n1); %RP Chopping M2 to be the size of M1
        else 
            Mark1aligned = [mark_1;mean(mark_1)*ones(n2-n1,1)];
        end
    %     [CC,CL] = best_correlation(Mark1aligned,Mark2aligned);
    end
    
    CC = max(CC);
end