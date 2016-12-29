% File: P2_87.m

clear;

fl = 1500;
t = 0:5e-5:4e-3;
n = 1:2:11;
D = zeros(length(n),1);
phi = zeros(length(n),1);
fo = input('Enter the value for the square wave frequency, fsq:  ');

for (i = 1:1:length(n))
  D(i) = 4/(n(i)*pi*sqrt(1 + (n(i)*fo/fl)^2));
  phi(i) = pi*(1-sin(n(i)*pi/2))/2 - atan(n(i)*fo/fl);
end;

% Creating y(t)
y = zeros(length(t),1);
for (i = 1:1:length(n))
  y = y + D(i)*cos(n(i)*2*pi*fo*t + phi(i))';
end;
y = y(:);


plot(t,y);
xlabel('t in sec -->');
ylabel('y(t)');
title('Output Waveform');




