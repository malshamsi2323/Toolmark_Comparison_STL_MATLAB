function plot_signals(Ysignal, Zsignal, titstr, legstr,display_figure,save_figure,dir_img)
    myfig = figure();
    
    if display_figure == false
        set(myfig, 'Visible', 'off');
    end
    

    plot(Ysignal, Zsignal,'LineWidth',1.5)
    xlabel('Y [mm]')
    ylabel('Z [µm]')
    title(titstr)
    if ~isempty(legstr)
    legend(legstr, 'Location', 'northeast')
    end
    
    if save_figure == true
        saveas(myfig, [dir_img, strrep(titstr, ':', '_'), '.png']);
    end
    
    drawnow
end