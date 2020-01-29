function H = cross_entropy(inp, lab)

    H = -sum(lab.*log(max(inp, 1e-8))); 
    H = mean(H); %mean over batches
end

