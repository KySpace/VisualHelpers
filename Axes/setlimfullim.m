function setlimfullim(ax, sz)
    ax.XLimMode = 'manual';
    ax.YLimMode = 'manual';
    ax.XLim = [-0.5, sz(2) + 0.5];
    ax.YLim = [-0.5, sz(1) + 0.5];
end