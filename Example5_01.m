% File: Example5_01.m  for Example 5-1

clear;
clf

fc = 10;
fa = 1;
Ta = 1/fa;
dt = 4*Ta/800;
wc = 2*pi*fc;
wa = 2*pi*fa;

t = 0:dt:4*Ta;

x = cos(wa*t);
x = x(:);

% Let the modulation be 50% modulation until t=2Ta, then 100%
temp1 = zeros(length(t),1);
for (i = 1:1:length(t))
  if (t(i) >= 2*Ta)
    temp1(i) = 1;
  end;
end;

m = 0.5*(1+temp1).*x;
% This is 50% modulation until t=2Ta, then 100% modulation


carrier = cos(wc*t);
carrier = carrier(:);

s = (1+m).*carrier;


subplot(211);
plot(t,m);
xlabel('t -->');
ylabel('m(t)');
axis([0 4 -1.2 1.2])
title('Modulating Signal');

subplot(212);
plot(t,s,t,abs(1+m),':');
xlabel('t -->');
ylabel('s(t) (solid), |g(t)| (dotted)');
axis([0 4 -2.2 2.2])
title('AM Signal and the magnitude of its Complex Envelope');





