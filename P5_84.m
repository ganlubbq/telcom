% File: P5_84.m for Problem 5-84

clear;
clf
global c;

BTb = 0.3;
Tb = 1;
N = 20;
dt = 2*Tb/N;
t = -2*Tb:dt:2*Tb;
A = BTb*sqrt(2*pi/log(2));
c = -2*(pi^2)*(BTb^2)/log(2);
p = zeros(length(t),1);

for (i = 1:1:length(t))
   a = (t(i)/Tb)-0.5;
   b = (t(i)/Tb)+0.5;
   p(i) = A*quad(@P5_84I,a,b);
end;


plot(t,p);
xlabel('t in sec -->');
ylabel('p(t)');
title('GMSK Data Pulse Waveform');
clear global;



