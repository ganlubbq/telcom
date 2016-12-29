function y = P3_43I(x);

global f1 fs
y = SA(pi*fs*(x-0.004));
j = sqrt(-1);
temp = exp(-2*j*pi*x*f1);
y = y .* temp(:);




