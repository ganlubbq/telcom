% File: Example4_01.m for Example 4-1

clear;

fc = 10;
fa = 1;
Ta = 1/fa;
dt = 4*Ta/200;
wc = 2*pi*fc;
wa = 2*pi*fa;

% Generate x and y quadrature modulating functions
t = 0:dt:4*Ta;
x = cos(wa*t);
x = x(:);
y = zeros(length(t),1);
y = PULSE(y,t,Ta,2*Ta);

% Generate the modulated signal by using the complex envelope 
% as given by Eq. (4-1a)
j = sqrt(-1);
g = x + j*y;
carrier = exp(j*wc*t);
g = g(:);
carrier = carrier(:);
v = real(g.*carrier);

subplot(211);
plot(t,x,t,y,':');
xlabel('t in sec -->');
ylabel( 'x(t) (solid), y(t) (dotted)')
axis([0 4 -1.2 1.2])
title('x(t) and y(t) Modulating Waveforms');

subplot(212);
plot(t,v,t,abs(g),':');
%plot(t,v);
xlabel('t in sec -->');
ylabel('v(t) solid, |g(t)| dotted');
title('QM Signal and its Complex Envelope Magnitude');





