 % File: E2_055N.M

clear;
global f1 T;

f = -10:0.2:10;
T = 1;
H = zeros(length(f),1);

for (i = 1:1:length(f))
  f1 = f(i);
  H(i) = quadl('Example2_06function',-T/2,T/2);
end;

PLOT_PR(1);
plot(f,H);
xlabel('f');
ylabel('W(f)');
title('Fourier Transform by Numerical Integration')
grid;
clear global;



