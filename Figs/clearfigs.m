function clearfigs(figs, components)
    arguments
        figs
        components  = []
    end
    for i_f = 1 : numel(figs)
        fig = figs(i_f);
        delete(fig.Children);
        for i_c = 1 : numel(components)
            delete(findall(fig, type=components(i_c))); 
        end
    end
end