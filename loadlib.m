fprintf("loading: VisualHelper \n");
vh_rootpath = fileparts(mfilename("fullpath"));
vh_srcfolders = ["Axes", "Colors", "Plots", "Figs" "[ColormapCrameri]"];
for i = 1 : numel(vh_srcfolders)
    addpath(genpath(vh_rootpath+"/"+vh_srcfolders(i)));
end

clear vh_rootpath vh_srcfolders