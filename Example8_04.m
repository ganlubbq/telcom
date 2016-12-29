% File: Example8_04.m for Example 8-4

clear;

% Select values for PedBw, f, B, dmile, diam (m) of parabola
% receiving antenna, the bit rate, R, and the system 
% noise temperature, Ts.
PedBw = 30.5;
f = 4e9;
R = 1.544e6;
dmile = 24784;

% diam has units of meters
diam = 1;
Ts = 154.5;
d = 1609.3*dmile;

lambda =3.0e8/f;

GardB = 10*log10(7*pi*(diam/2)^2/lambda^2);
LfsdB = 20*log10(4*pi*d/lambda);
kdB = 10*log10(1.38e-23);
TsdB = 10*log10(Ts);
RdB = 10*log10(R);
EbNoRdB = PedBw - LfsdB + GardB - TsdB - kdB - RdB;
fprintf('\nThe Calculated Eb/No (dB) = %g\n\n',EbNoRdB);



