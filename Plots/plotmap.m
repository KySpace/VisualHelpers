function plotmap(ax, data, x, y, dotsz, marker, clrmp, clrax)
    arguments
        ax      (1,1)   {mustBeAxis}
        data    (:,:)   {mustBeNumericOrLogical}
        x       (:,:)   {mustBeNumeric, mustBeReal, mustBeEqualLength(data, x)}
        y       (:,:)   {mustBeNumeric, mustBeReal, mustBeEqualLength(data, y)}
        dotsz   (1,1)   {mustBeNumeric, mustBeReal} = 50
        marker  (1,:) char {mustBeMember(marker, {'d', 's', 'h', '.', 'o'})} = 's'
        clrmp           {mustBeColormap} = 'hsv'
        clrax           {mustBeCAxis} = 'auto'
    end
    scatmap = scatter(ax, x(:), y(:), dotsz, data(:), 'filled', marker);
    ax.XLim = [min(x(:)) , max(x(:))];
    ax.YLim = [min(y(:)) , max(y(:))];
    daspect(ax, [1 1 1]);
    scatmap.Marker = marker;
    colormap(ax, clrmp);
    caxis(ax, clrax);
end