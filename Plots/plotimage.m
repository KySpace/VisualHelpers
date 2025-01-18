% PLOTIMAGE     ax  [] to create a new axis
function plotimage(ax, imag, cbar)
    arguments
        ax                  
        imag                {mustBeNumericOrLogical}
        cbar                {mustBeMember(cbar, {'patt', 'imag', 'od', 'err', 'auto'})} = 'auto'
    end
    imagesc(ax, imag);    
    
    switch cbar
        case 'patt'
            daspect(ax, [1 1 1]);
            colormap(ax, 'bone');
            caxis(ax, [-1, 1]);
        case 'imag'
            daspect(ax, [1 1 1]);
            colormap(ax, 'gray');  
            set(ax, 'YDir', 'reverse');
        case 'od'
            colorbar(ax);    
            ax.Colorbar.Location = 'west';
            gmap = [zeros(1, 128), linspace(0, 1, 128)];
            rmap = [linspace(1, 0, 128), zeros(1, 128)];
            cmap = [rmap; gmap; zeros(1, 256)]';
            colormap(ax, cmap);
            caxis(ax, [-2, 2]);
        case 'err'
            daspect(ax, [1 1 1]);
            colorbar(ax);    
            gmap = [zeros(1, 128), linspace(0, 1, 128)];
            rmap = [linspace(1, 0, 128), zeros(1, 128)];
            cmap = [rmap; gmap; zeros(1, 256)]';
            colormap(ax, cmap);
            maxval = max(abs(imag(:)));
            caxis(ax, [-maxval, maxval]);
        case 'auto'
            daspect(ax, [1 1 1]);
            colorbar(ax);
    end    
    xlim(ax, [0, size(imag, 2)]);
    ylim(ax, [0, size(imag, 1)]);
    drawnow();
end