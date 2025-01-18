function clrbar = clrbarifnone(ax, varargin)
    if isempty(ax.Colorbar)
        clrbar = colorbar(ax, varargin{:});
    else
        clrbar = [];
    end
end