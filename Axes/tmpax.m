function ax = tmpax()
    idx = 1001;
    while ishandle(idx)
        idx = idx + 1;
    end
    ax = setaxis(idx, 'temp');
end