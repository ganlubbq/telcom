% File: Example3_11.m for Example 3-11 and Eq. (3-53)
 
clear;
clf

% Select the bit rate, R (bits/sec), in the next line of code
R = 6;
Tb =1/R;
% Enter l (lower case L) in the next line of code to set the 
% number of multilevels, where the number of multilevels is L=2^l
l = 3;
L = 2^l;
f = 0:0.2:10;
x =l*pi*f*Tb;
temp1 = SA(x);

P = Tb*(temp1.*temp1);

plot(f,P);
xlabel('f in Hz -->');
ylabel('Multilevel NRZ PSD, P(f)');
title(['PSD for Multilevel NRZ Line Code where R=',num2str(R),' bits/sec and L=',num2str(L)]);
% NOTE: Compare with Fig. 5-33.
grid;
