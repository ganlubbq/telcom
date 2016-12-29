% File: Example4_03.m for Example 4-3


% Calculate and plot s(t)=Ac[1+m(t)]cos(wct)
% Assume that m(t) is a sinusoidal modulation waveform

clear;
clf

fc = 10;
fa = 1;
Ta = 1/fa;
dt = 2*Ta/200;
wc = 2*pi*fc;
wa = 2*pi*fa;

t = 0:dt:2*Ta;

m = cos(wa*t);
m = m(:);
j = sqrt(-1);
g = 1 + m;
carrier = exp(j*wc*t);
g = g(:);
carrier = carrier(:);
s = real(g.*carrier);

subplot(211);
plot(t,m);
xlabel('t in sec -->');
ylabel('m(t)');
axis([0 2 -1.2 1.2])
title('Sinusoidal Modulating Waveform');

subplot(212);
plot(t,s);
xlabel('t in sec -->');
ylabel('s(t)');
axis([0 2 -2.2 2.2])
title('Amplitude Modulating Signal');





