function clrfidelity = clrfidelity(fidlarr)
    arguments
        fidlarr     (1,:)  {mustBeLessThanOrEqual(fidlarr, 1), mustBeNonnegative}
    end
    sat = ones(length(fidlarr), 1);
    val = ones(length(fidlarr), 1);
    hue = 0.5 * fidlarr';
    clrfidelity = hsv2rgb([hue sat val]);
end