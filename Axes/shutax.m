% Hold off for the axes.
function shutax(ax)
    for i = 1 : length(ax)
        hold(ax(i), 'off');
    end
end