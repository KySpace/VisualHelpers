% Open axes without clearing it.
function keepax(ax)
    for i = 1 : length(ax)
        hold(ax(i), 'on');
    end
end