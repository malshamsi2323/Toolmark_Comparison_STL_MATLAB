function [xp,yp,zp,X,Y,Z] = getPointsGrids(Ap,NoX,NoY)
    % 3D points coordinates and Grid matrices
    xp = Ap(:,1);  X = reshape(xp,[NoX,NoY]);
    yp = Ap(:,2);  Y = reshape(yp,[NoX,NoY]);
    zp = Ap(:,3);  Z = reshape(zp,[NoX,NoY]);
end