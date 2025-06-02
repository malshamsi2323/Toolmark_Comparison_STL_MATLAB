function plot_gridsurface(X,Y,Z,file,display_figure,save_figure,dir_img)
    myfig = figure();
    
    if display_figure == false
        set(myfig, 'Visible', 'off');
    end
    
    s = surf(X,Y,Z,'FaceAlpha',0.99,'FaceLighting','gouraud');
    l = light('Position',[-50 -15 29]);
    title_text = ['Surface Plot:' file];
    title(title_text)
    xlabel('x [mm]'); ylabel('y [mm]'); zlabel('Z [mm]')
    view(-7.5, 45); %view(90,50);
    s.EdgeColor = 'none';
    hidden on
    
    if save_figure == true
        saveas(myfig, [dir_img, strrep(title_text, ':', '_'), '.png']);
    end
    drawnow
end