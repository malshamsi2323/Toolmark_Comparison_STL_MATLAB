function [c,lag] = cross_correlation(d1,d2)
    % Make sure d1 and d2 are row vectors
    d1 = d1(:).';
    d2 = d2(:).';

    n1 = length(d1);
    n2 = length(d2);

    if  n1 < n2
        [c,lag] = cross_correlation(d2,d1);
        return
    end
    
    d1 = d1 - mean(d1);
    d2 = d2 - mean(d2);

    c = conv(d1,fliplr(d2),'valid')/max(conv(d2,d2));
    
    [~,imax] = max(c);
    lag = (imax-n2);
end