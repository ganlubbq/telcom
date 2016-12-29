% File: P8_30.m for Problem 8-30

clear;

% (a) Compute the system noise temperature Ts evaluated at the
% antenna input of the waveguide
Ta = 160;
To = 290;
Te2 = 800;
L1 = 10^0.2;
G = 1e12;
B = 1e6;
Te = To*(L1-1) + Te2*L1;
Ts = Ta + Te;
fprintf('\n\nTs = %g (degrees K)',Ts);

% (b) Noise Figure F
F = Te/To+1;
FdB = 10*log10(F);
fprintf('\nF (dB) = %g',FdB);

% (c) The available output noise power Pno
Pno = 1.38e-23*Ts*B*G;
fprintf('\nPno = %g (Watts)\n',Pno);

