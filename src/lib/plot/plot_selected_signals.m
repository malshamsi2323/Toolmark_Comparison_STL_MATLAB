function plot_selected_signals(Ysignal, Zsignal, str, NoOfPlots,display_figure,save_figure,dir_img)
    NoX = size(Ysignal,2);

    if nargin <=2
        NoOfPlots = 10;     %NoX;
    end
    
    NoOfPlots = max([NoX, NoOfPlots]);

    idx = floor(linspace(1,NoX,NoOfPlots));
    y = Ysignal(:,idx);
    z = Zsignal(:,idx);
    
    myfig = figure();
    
    if display_figure == false
        set(myfig, 'Visible', 'off');
    end
    
    hold on % Moved here - Archili
    for ic=1:NoOfPlots
        plot(gca(),y(:,ic),z(:,ic))
    end
    xlabel('Y [mm]')
    ylabel('Z [mm]')
    title(str)
    hold off
    
    if save_figure == true
        saveas(myfig, [dir_img, strrep(str, ':', '_'), '.png']);
    end
    
    drawnow
end