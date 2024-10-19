function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    n = size(k_secv_set, 1);
    m = size(words_set, 1);
    
    retval = zeros(n, m);
    
    for i = 1:length(k_secv_set)
        # Get the sequence;
        seq = k_secv_set{i};
        
        # Find all the indexes of seq in k_secv_corpus
        seq_indexes = find(ismember(k_secv_corpus, seq));
        
        for j = 1:length(seq_indexes)
            # Find the word right after a sequence
            word(i) = corpus_words(seq_indexes(j) + k);
            word_index = find(ismember(words_set, word(i)));
            
            retval(i, word_index) = retval(i, word_index) + 1; 
        endfor
    endfor
    
endfunction
