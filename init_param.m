function params = init_param()
w1 = 1/sqrt(5*5*8)*randn(5, 5, 1,8);
b1 = zeros(24,24,8);
w2 = 1/sqrt(5*5*8)*randn(5,5, 8,1);
b2 = zeros(20,20);
w3 = 1/sqrt(128*361)*randn(128,361);
b3 = zeros(128, 1);
w4 = 1/sqrt(10*128)*randn(10,128);
b4 = zeros(10,1);

params = {w1,w2,w3,w4,b1,b2,b3,b4};