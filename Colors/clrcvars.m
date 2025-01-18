function clrcvars = clrcvars(cvar)
    arguments
        cvar     (1,:) 
    end
    stdsat = .7;
    stdval = .85;
    stdhue = .55;
    if isempty(cvar)
    clrcvars = hsv2rgb([stdhue stdsat stdval]);
    else
    cvar = normalize(cvar, "range");
    sat = ones(length(cvar), 1)*stdsat;
    val = ones(length(cvar), 1)*stdval;
    hue = mod(0.7*cvar' + stdhue, 1);
    clrcvars = hsv2rgb([hue sat val]);
end