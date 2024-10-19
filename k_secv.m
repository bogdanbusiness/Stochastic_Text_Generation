function B = k_secv (A, k)
    
    # Find the pointer of all the K-secv
    for i = 1:(length(A) - k)
        
        # Create a cell array with k elems starting from A(i)
        for j = 1:k
            str(j) = A(i + j - 1);
        endfor
        
        # Concatenate the cell array
        B{i, 1} = strjoin(str);
    endfor

endfunction
