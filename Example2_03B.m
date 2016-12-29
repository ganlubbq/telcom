% File: Example2_03B.m for Example 2-3
% This file is used for Eq (2-34).

% The Magnitude-Phase Spectral Functions
% will be plotted.
% The Magnitude function will be plotted in dB units.
% The Phase function will be plotted in degree units.

clear;

for (k = 1:10)
  f(k) = 10*2^(-10)*2^k;
  W(k) = 1/(1 + 2*pi*f(k)*sqrt(-1));
end;

B = log(W);
WdB = (20/log(10))*real(B);
Theta = 180/pi*imag(B);
subplot(211);
semilogx(f,WdB);
xlabel('f');
ylabel('W(f) in dB');
grid;

subplot(212);
semilogx(f,Theta);
xlabel('f');
ylabel('Angle of W(f)in degrees');
grid;
subplot(111);



