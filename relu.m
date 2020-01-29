function out = relu(conv)
    out = max(0,real(conv)) + 1i*(max(0, imag(conv)));
end

