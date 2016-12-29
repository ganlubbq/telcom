% File: Exampl5_12.m for Example 5-12 and Figure 5-33

clear;
clf

R = 3;
l = 3;
Tb = 1/R;
f = 0:0.02:10;

x = l*pi*f*Tb;
PdB = 10*log10(SA(x).*SA(x));

% Note that on this plot consecutive points that are below 
% the -30dB point are connected with a straight line 

plot(f,PdB);
axis([min(f) max(f) -30 0]);
xlabel('f -->');
ylabel('PdB(f)');
title('PSD for the Complex Envelope of MPSK and QAM');
