function aline = plotcentline(ax, center, coor, vh, rotmat)
    arguments
        ax          (1,1)   
        center      (1,2)   {mustBeNumeric}
        coor        (:,1)   {mustBeNumeric}
        vh          (1,1)   {mustBeMember(vh, {'v', 'h'})}
        rotmat      (2,2)   {mustBeNumeric}        
    end
    switch vh
        case 'v'
            shftbeg = [0, min(coor(:))];
            shftend = [0, max(coor(:))];
        case 'h'
            shftbeg = [min(coor(:)), 0];
            shftend = [max(coor(:)), 0];
    end
    begpt = center + shftbeg * rotmat;
    endpt = center + shftend * rotmat;
    aline = plot(ax, [begpt(1), endpt(1)], [begpt(2), endpt(2)]);    
end