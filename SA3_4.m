% File: SA3_4.m for Study Aid Example SA3-4

clear;

R = 38400;
Tb = 1/R;
f = -200000:2000:200000;

% Creating PSD
Pf = 10*log10((SA(pi*f*Tb)).^2);

plot(f,Pf);
xlabel('f  (Hz)');
title('Power Spectral Density');
ylabel('P(f) -- dB units')
axis([-200000 200000 -50 0])


