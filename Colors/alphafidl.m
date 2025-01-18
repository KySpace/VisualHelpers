function alpha = alphafidl(fidl)
    minalpha = 0.3;
    if isnan(fidl)
        alpha = minalpha;
    else 
        alpha = minalpha + (1-minalpha)*fidl;
    end
end