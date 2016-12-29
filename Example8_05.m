% File: Example8_05.m  for Example 8-5

clear;

% Select values for PedBw, f, B, dmile, diam, and Tar, Tf, Tlna, Trx, Gf
% and Glna to desired values.

PedBw = 36;
f = 4e9;
B = 30e6;
dmile = 24784;
% diam has units of meters
diam = 10*(0.3048);
Tar = 26;
Tf = 6;
Tlna = 40;
Trx = 2610;
Gf = 0.98;
Glna = 100000;

d = 1609.3*dmile;

lambda = 3.0e8/f;

GardB = 10*log10(7*pi*(diam/2)^2/lambda^2);
fprintf('\nGardB = %g\n',GardB);
LfsdB = 20*log10(4*pi*d/lambda);
Ts = Tar + Tf + Tlna/Gf + Trx/(Gf*Glna);
fprintf('\nTs = %g\n',Ts);
kdB = 10*log10(1.38e-23);
TsdB = 10*log10(Ts);
BdB = 10*log10(B);
CNRdB = PedBw - LfsdB + GardB - TsdB - kdB - BdB;
fprintf('\nThe (C/N) (dB) = %g\n\n',CNRdB);



