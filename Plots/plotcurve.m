function line = plotcurve(ax, paras)
    if isfield(paras, {'linslope', 'linstart'})
        timeline = paras.range(1) : 0.1 : paras.range(2);
        lingrowth = @(paras, t) paras.linslope .* (t - paras.linstart);
        line = plot(ax, timeline, lingrowth(paras, timeline), '-', 'LineWidth', 1);
    end
end