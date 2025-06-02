function [Xsignal,Ysignal,Zsignal] = getSignals(Ap)
    % Tool Scan Data m given as X [mm], Y [mm],

    % Reshaping the data into signals
    %  Each signal corresponding to a constant x-value

    % Determine number of rows (NoY) and colums (NoX)

    Asort = round(Ap,19,'decimals');      % rounds A on 12 digits
    Asort = sortrows(Asort,1);            % sorts Matrix according to the first column (x-values)
    NoY   = sum(Asort(:,1)==Asort(1,1));  % number of points per signal (how often can an x-value be found)
    NoX   = length(Asort)/NoY;            % number of signals

    % Check if data is correct
    assert(NoX*NoY==length(Asort),'the dimensions do not match') 

    % Split up the data into Signals

    Xsignal = zeros(NoY,NoX);
    Ysignal = zeros(NoY,NoX);
    Zsignal = zeros(NoY,NoX);

    for ix = 1:NoX
        idx    = 1+(ix-1)*NoY:ix*NoY;
        signal = [Asort(idx,2),Asort(idx,3)];  % aux array to store Y and Z as columns
        signal = sortrows(signal,1);
        Xsignal(:,ix) = Asort(idx,1);
        Ysignal(:,ix) = signal(:,1);
        Zsignal(:,ix) = signal(:,2);
    end

    % Scaling Z (milimeters to micronmeters)
    Zsignal = 1000 * Zsignal;
end