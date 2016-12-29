% File: Example2_03A.m for Example 2-3
% This file is used for Eq (2-34).

% The Quadrature Spectral Functions, X(f) and Y(f)
% will be plotted
clear;

f = -1:0.02:1;
j = sqrt(-1);
for (n = 1:length(f))
  W(n) = 1/(1 + 2 * pi * f(n) * j);
end;

X = real(W);
Y = imag(W);

subplot(211);
plot(f,X);
xlabel('f');
ylabel('X(f)');

subplot(212);
plot(f,Y);
xlabel('f');
ylabel('Y(f)');





