% File: Example5_05.m for Example 5-5 
% Calculate and plot the PM Waveform 

clear;
clf

% fm is the frequency (Hz) of the sinusoidal modulation
% Beta is the modulation index
fc = 5;
Beta = 3;
fm = 1;
Tm = 1/fm;
dt = 2*Tm/200;
wc = 2*pi*fc;
wm = 2*pi*fm;

t = 0:dt:2*Tm;

mf = cos(wm*t);
mf = mf(:);
j = sqrt(-1);
g = exp(j*Beta*sin(wm*t));
g = g(:);

carrier = exp(j*wc*t);
carrier = carrier(:);
s = real(g.*carrier);

subplot(211);
plot(t,mf);
xlabel('t-->');
ylabel('mf(t)');
title('Modulating Waveform');

subplot(212);
plot(t,s);
xlabel('t -->');
ylabel('s(t)');
subplot(111);
title('PM Signal Waveform');



