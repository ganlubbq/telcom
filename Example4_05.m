% File: Example4_05.m  for Example 4-5

clear;
clf

fc = 10;
fa = 1;
Ta = 1/fa;
dt = 4*Ta/200;
wc = 2*pi*fc;
wa = 2*pi*fa;

t = 0:dt:4*Ta;
x = cos(wa*t);
x = x(:);
y = zeros(length(t),1);
y = PULSE(y,t,Ta,2*Ta);

j = sqrt(-1);
g = x + j*y;
g = g(:);

% Generate the QM signal by using quadrature components of Eq. (4-115)
temp1 = cos(wc*t);
temp2 = sin(wc*t);
temp1 = temp1(:);
temp2 = temp2(:);

v = x.*temp1 - y.*temp2;

subplot(211);
plot(t,x,t,y,':');
xlabel('t in sec -->');
ylabel( 'x(t) solid, y(t) dotted')
axis([0 4 -1.2 1.2])
title('x(t) and y(t) Modulating Waveforms');


subplot(212);
plot(t,v,t,abs(g),':');
xlabel('t');
xlabel('t in sec -->');
ylabel('v(t) solid, |g(t)| dotted');
title('QM Signal and |g(t)|');




