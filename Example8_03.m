% File: Example8_03.m for Example 8-3

clear;

% Select values for PedBw, f, B, dmile, diam (m) of parabola
% receiving antenna, and the system noise temperature, Ts.
PedBw = 36;
f = 4e9;
B = 30e6;
dmile = 24784;
% Antenna diam has units of meters
diam = 5;
Ts = 154.5;
d = 1609.3*dmile;

lambda =3.0e8/f;

GardB = 10*log10(7*pi*(diam/2)^2/lambda^2);
LfsdB = 20*log10(4*pi*d/lambda);
kdB = 10*log10(1.38e-23);
TsdB = 10*log10(Ts);
BdB = 10*log10(B);
CNRdB = PedBw - LfsdB + GardB - TsdB - kdB - BdB;

fprintf('The Calculated C/N (dB) = %g\n\n',CNRdB);



