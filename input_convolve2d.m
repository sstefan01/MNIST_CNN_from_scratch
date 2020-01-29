function C = input_convolve2d(data, kern, bias,stride, padding)

if sum(padding) > 0
p_data = padarray(data, padding,0);
else
    p_data = data;
end

C = zeros([(size(data(:,:,1,1)) - size(kern(:,:,1,1)) + 2*padding)./stride + 1, size(kern,4), size(data,4)]); %initialize output array
ind1 = stride(1):size(p_data,1)-size(kern,1)+1;
ind2 = stride(2):size(p_data,2)-size(kern,2)+1;

for b = 1:size(data,4) %batch size
for j = 1:length(ind1)
for k = 1:length(ind2)
for f = 1:size(kern,4) % number of filters

 C(j,k,f,b) = sum(p_data(ind1(j):ind1(j)+size(kern,1) -1, ind2(k):ind2(k)+size(kern,1) -1,:,b).*kern(:,:,:,f), 'all');


end
end
end
end

C = C + bias;


