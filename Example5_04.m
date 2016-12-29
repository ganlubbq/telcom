% File: Example5_04.m     for Example 5-4

clear;
clf

Ac = 1
fc = 4;
fa = 1;
Ta = 1/fa;
dt = 2*Ta/200;
wc = 2*pi*fc;
wa = 2*pi*fa;

t = 0:dt:2*Ta;

% Sinusoidal modulation is
x = sin(wa*t);
x = x(:);
% Obtain the Hilbert Transform from Table A-7
y = -cos(wa*t);
y = y(:);

carrierx = cos(wc*t);
carrierx = carrierx(:);
carriery = sin(wc*t);
carriery = carriery(:);

% Using Eq (5-16), evaluate the USSB waveform
s = Ac*(x.*carrierx - y.*carriery)


subplot(311)
axis([0 2*Ta -1.5 1.5]);
plot(t,x,t,y,':');
xlabel('t');
ylabel('x(t) (solid), y(t) (dotted)');
axis([0 2 -1.2 1.2])
title('Quadrature Modulating Signals'); 

subplot(312);
plot(t,cos(wc*t));
xlabel('t');
ylabel('cos(wc*t)');
axis([0 2 -1.2 1.2])
title('Suppressed Carrier Waveform');

% Note that the frequency of s(t) is now fc+fa
% instead of fc.  This is UPPER SSB.

fprintf(['\nNote that the frequency of s(t) is now fc+fa\n'])
fprintf(['instead of fc of the suppressed carrier waveform.\n'])
fprintf(['Thus s(t) is UPPER SSB.\n\n'])

subplot(313);
plot(t,s);
xlabel('t');
ylabel('s(t)');
axis([0 2 -1.2 1.2])
title('Upper SSB Signal');




