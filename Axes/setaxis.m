function varargout = setaxis(num, name)
    arguments
        num     (1,:)   double 
        name    (1,:)   string
    end
    for i = 1 : length(num)
        fig = figure(num(i));
        set(fig, 'Name', name(i));
        delete(fig.Children);
        varargout{i} = axes(fig);
    end
end

