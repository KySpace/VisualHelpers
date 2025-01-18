function fig = setfigsifnone(num, components)
    arguments
        num
        components      = []
    end
    if ~ishandle(num); fig = figure(num); 
    else
        fig = findall(groot, "Type", "figure", "Number", num);
        clearfigs(fig, components)
    end
end