function retval = k_secv_idx (distinct_k_sec)
    # Initialize the map
    retval = containers.Map(distinct_k_sec, 1:length(distinct_k_sec));
endfunction