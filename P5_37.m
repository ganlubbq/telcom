% File: P5_37.m for Problem 5-37

clear;


Ac = 100;
Beta = 5.0;
N = 3;
n = 1:1:N;

% Computing normalized average power

PT = besselj(0,Beta)^2;
for (i = 1:1:length(n))
  PT = PT + 2*besselj(n(i),Beta)^2;
end;
PT = PT*0.5*Ac^2;

fprintf('\n\n');
fprintf('The normalized average power (in 1 Ohm) is %e Watts\n',PT);


