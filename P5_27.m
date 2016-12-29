% File: P5_27.m for Problem 5-27

clear;
clf

t = -4:0.01:4;
fc = 1;
fm = 0.25*fc;
Dp = pi;
Df = pi;
m = cos(2*pi*fm*t);
theta = Df/(2*pi*fm)*sin(2*pi*fm*t);
sp = cos(2*pi*fc*t + Dp*m);
sf = cos(2*pi*fc*t + theta);

subplot(311);
plot(t,m);
title('Sinusoidal Modulating Waveform, m(t)');
xlabel('t -->');
ylabel('m(t)');

subplot(312);
plot(t,m,'--',t,sp);
title('5-21(a)  PM Modulator Output Signal, sp(t) (Solid Green)');
xlabel('t -->');
ylabel('sp(t)(solid green), m(t) (dash blue)');

subplot(313);
plot(t,m,'--',t,sf);
title('5-21(b)  FM Modulator Output Signal, sf(t) (Solid Green)');
xlabel('t -->');
ylabel('sf(t)(solid green), m(t) (dash blue)');

