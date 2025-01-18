% hori and vert should have more than 1 element.
function setlimfullarr(ax, hori, vert)
    ax.XLimMode = 'manual';
    ax.YLimMode = 'manual';
    calcstep = @(arr) (max(arr) - min(arr)) / (numel(arr) - 1);
    calclim = @(arr, marg) [min(arr) - marg, max(arr) + marg];
    if numel(hori) == 1 && numel(vert) == 1; marg_h = 0.5; marg_v = 0.5;
    elseif numel(hori) == 1; marg_h = calcstep(vert); marg_v = calcstep(vert);
    elseif numel(vert) == 1; marg_h = calcstep(hori); marg_v = calcstep(hori);
    else                   ; marg_h = calcstep(hori); marg_v = calcstep(vert);
    end
    ax.XLim = calclim(hori, marg_h);
    ax.YLim = calclim(vert, marg_v);
end