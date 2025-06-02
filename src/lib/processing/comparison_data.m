function CompZ = comparison_data(Mark)
    Z1 = Mark{1}; n1 = length(Z1);
    Z2 = Mark{2}; n2 = length(Z2);

    if n1 < n2
        delta = n2-n1;
        addon = ones(delta,1)*mean(Z1);
        Z1    = vertcat(Z1,addon);
    else
        delta = n1-n2;
        addon = ones(delta,1)*mean(Z2);
        Z2    = vertcat(Z2,addon);
    end
    CompZ = horzcat(Z1,Z2);
end