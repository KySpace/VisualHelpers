function clr_q = clrmapquery(clrmap, query_norm)
arguments
    clrmap          (:,3)
    query_norm      (1,:)
end
    clr_q = nan([length(query_norm),3]);
    for i_c = 1 : 3
        c_i = interp1((0:255)'/255, clrmap(:,i_c), query_norm', "linear");
        clr_q(:,i_c) = c_i;
    end
end

