% File: P5_19.m for Problem 5-19(b)

clear
clf

t = 0:0.002:2;
T = 2;
fc = 20;
wc = 2*pi*fc;
m = SA(pi*T*t);
mh = SA(pi*T/2*t).*sin(pi*T/2*t)';
s = m.*cos(wc*t)' - mh.*sin(wc*t)';

plot(t,s);
xlabel('t -->');
ylabel('s(t)');
title('USSB Signal, s(t)');





