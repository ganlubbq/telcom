function y = Example2_06function(x);

global f1 T
y = 1;
j = sqrt(-1);
temp = exp(-2j*pi*x*f1);
y = y .* temp(:);




