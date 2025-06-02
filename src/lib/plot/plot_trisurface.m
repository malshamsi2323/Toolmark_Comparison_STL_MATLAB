function plot_trisurface(Ac,xp,yp,zp,file,display_figure,save_figure,dir_img)
    myfig = figure();
    
    if display_figure == false
        set(myfig, 'Visible', 'off');
    end
    
    h = trisurf(Ac, xp, yp, zp);
    l = light('Position',[-50 -15 29]);
    view(-7.5, 45)
    lighting gouraud %phong
    shading flat
    %     plot3(xp,yp,zp,'.');
    %     view(90,50);
    grid on
    xlabel('x [mm]'); ylabel('y [mm]'); zlabel('Z [mm]')
    title_text = ['3D Plot:' num2str(file)];
    title(title_text)
    
    if save_figure == true
        saveas(myfig, [dir_img, strrep(title_text, ':', '_'), '.png']);
    end
    
    drawnow
end