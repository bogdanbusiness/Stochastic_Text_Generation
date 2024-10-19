function retval = word_idx (distinct_wds)
    # Initialize the map
    retval = containers.Map(distinct_wds, 1:length(distinct_wds));
endfunction
