% Calculates best correlation and lag at which the smaller signal (smaller
% in length) has the largest correlation with the larger one.
%
% Inputs:
%   d1, d2: (vector) signals
function [c,lag] = best_correlation(d1,d2)
    % Make sure d1 and d2 are row vectors
    d1 = d1(:);
    d2 = d2(:);

    n1 = length(d1);
    n2 = length(d2);
    
    % The first signal given to the function should be larger
    if  n1 < n2
        [c,lag] = best_correlation(d2,d1);
        return
    end
    
    % Correlations for each lag will be stooreed here
    c = zeros(1, n1-n2+1);
    
    for lag = 0:n1-n2
        % Extracting data for corresponding lag
        x = d1(1+lag:lag+n2);
        y = d2;
        
        % Calculating pearson correlation
        mean_x = mean(x);
        mean_y = mean(y);
        
        numerator = sum((x - mean_x) .* (y - mean_y));
        denominator = sqrt(sum((x - mean_x).^2) * sum((y - mean_y).^2));
        
        pearson_corr = numerator / denominator;
        
        c(lag+1) = pearson_corr;
    end
    
    % Getting the lag
    [~,imax] = max(c);
    lag = imax-1;
end

% 0.8556