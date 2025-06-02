% In case of many subplots the width and height of the subplots are small
% in the matlab live script. The following function adjust the dimension
% of the plots
%
% Input:
%   ax: axis handle
function setFigHeight(ax)
    ax.Position = [ax.Position(1), ax.Position(2), 0.8, ax.Position(4)];
end