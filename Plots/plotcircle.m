function circle = plotcircle(ax, position, radius)
    arguments
        ax          (1,1)   
        position    (1,2)   {mustBeNumeric}
        radius      (1,1)   {mustBeNumeric}
    end
    theta = -0.1 : 0.1 : 2 * pi;
    x = radius .* cos(theta) + position(1);
    y = radius .* sin(theta) + position(2);
    if nargin > 2
        circle = plot(ax, x, y);
    else 
        circle = plot(x, y);
    end
end