function conv2 = diff_relu(conv2)
    conv2(conv2 <= 0) = 0;
    conv2(conv2 > 0) = 1;
end