% Plots correlction matrix
%
% Inputs:
% 
% correlation matrix: square matrix contaning pearson correlations
% files: filenames to display in the x and y axis of correlation matrix
% idxs: vector of the same length of files. Elements are boolean. Only the
%       elements are considered during plotting, where idxs have values of
%       true. This is used to plot group-specific plots.
% my_title: (string) title on top of the figure as well as the name of the
%            stored image
% display_figure: (boolean) if true displays the image. If false it is
%                  hidden
% save_figure: (boolean) saves image to a specified directory if true
% dir_img: (string) directory to store image
function plot_correlation_matrix(correlation_matrix, files, idxs, my_title,display_figure,save_figure,dir_img)
    myfig = figure();
    
    if display_figure == false
        set(myfig, 'Visible', 'off');
    end
    
    imagesc(correlation_matrix(idxs, idxs));
    colorbar();
    colormap(jet);
    caxis([-1,1]);
    xticks(1:sum(idxs));
    yticks(1:sum(idxs));

    xticklabels(files(idxs));
    yticklabels(files(idxs));

    xtickangle(45);
    
    title(my_title);
    
    if save_figure == true
        saveas(myfig, strcat(dir_img, strrep(my_title, ':', '_'), '.png'));
    end

end