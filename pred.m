function Y = pred(data, params)

w1 = params{1};
w2 = params{2};
w3 = params{3};
w4 = params{4};
b1 = params{5};
b2 = params{6};
b3 = params{7};
b4 = params{8};



conv1 = input_convolve2d(data,w1,b1,[1 1], 0);
a1 = relu(conv1);
conv2 = input_convolve2d(a1,w2,b2,[1 1], 0);
m1 = maxpool(conv2, [2,2], [1 1], 0);

fc = reshape(m1, size(m1,1)*size(m1,2)*size(m1,3),size(m1,4));
z = w3*fc+b3;
z = relu(z);

out = w4*z + b4;
out = relu(out);
probs = softmax(out);

Y = zeros(size(data,4));

for i = 1:size(probs,2)
    am = find(probs(:,i) == max(probs(:,i)));
    am = am(1);
    Y(i) = am;
end
