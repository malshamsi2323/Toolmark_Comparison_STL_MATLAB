function [Rz, Rmax] = roughness(Zsignal,deltaY)
    Rz_pts = round(0.8/deltaY);
    % points that build one measure length for Rz
    Rz=0;   % Rz = Average roughness (in 1:5*Rz_pts);
    % averaged over NoX Signals

    Rz1  = 0; % Sums Rz up
    Rmax = 0; % Rmax = maximum peak-to-valley height (in 1:5*Rz_pts)
    nc   = 5; % number of chunks
    NoX  = size(Zsignal,2);

    for ix=1:NoX
        Zp = Zsignal(:,ix);
        nrz = floor(length(Zp)/nc); %RSP
        iz = 1:nrz; %RSP
        for d=1:nc
            idx = (d-1)*nrz + iz; %RSP
            %             lr_points=Zp(idx); %RSP
            %     lr_points=Z(d*Rz_pts+1:(d+1)*Rz_pts);  %RSP
            Rz1=Rz1+abs(max(Zp(idx))-min(Zp(idx))) ;
        end
        %     Rmax1=abs(max(Z(1:5*Rz_pts))-min(Z(1:5*Rz_pts))); %RSP
        Rmax1=abs(max(Zp)-min(Zp)); %RSP
        Rmax=Rmax+Rmax1;

        Rz1=Rz1/nc;
        Rz=Rz+Rz1;
    end

    Rz = Rz/NoX;

    Rmax = Rmax/NoX;
end