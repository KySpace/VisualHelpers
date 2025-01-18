function ellipse = plotellipse(ax, position, radiusx, radiusy)
    theta = -0.1 : 0.1 : 2 * pi;
    x = radiusx .* cos(theta) + position(1);
    y = radiusy .* sin(theta) + position(2);
    if nargin > 3
        ellipse = plot(ax, x, y);
    else 
        ellipse = plot(x, y);
    end
end