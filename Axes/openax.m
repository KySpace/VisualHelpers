% Open and clear axes, but keep them in the end.
function openax(ax)
    for i = 1 : length(ax)
        if length(ax(i).YAxis) > 1
            yyaxis(ax(i), 'right');
            cla(ax(i));
            yyaxis(ax(i), 'left');
            cla(ax(i));
        else
            cla(ax(i));            
        end
        hold(ax(i), 'on');
    end
end