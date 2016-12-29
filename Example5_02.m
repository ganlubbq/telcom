% File: Example5_02.m for Example 5-2

clear;

fc = 10;
fa = 1;
Ta = 1/fa;
dt = 4*Ta/200;
wc = 2*pi*fc;
wa = 2*pi*fa;

t = 0:dt:4*Ta;

m = 1.5*cos(wa*t);
m = m(:);
% This is 150% modulation


y = zeros(length(t),1);
for (i = 1:1:length(t))
  if (m(i) > -1)
    y(i) = 1;
  end;
end;

carrier = cos(wc*t);
carrier = carrier(:);

s = (1+m).*y.*carrier;


subplot(211);
plot(t,m);
xlabel('t');
ylabel('m(t)');
axis([0 4 -1.6 1.6])
title('Modulating Signal)');

subplot(212);
plot(t,s,t,abs((1+m).*y),':');
xlabel('t');
ylabel('s(t) (solid),  |g(t)| (dotted)');
axis([0 4 -2.2 2.7])
title('AM Signal and the Magnitude of its Complex Envelope');
subplot(111);




