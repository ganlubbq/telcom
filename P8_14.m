% File: P8_14.m  for Problem P-14

clear;
clf

% Plot Eq. (8-12)
h = 6.6252e-34;
k = 1.38e-23;
T = 300;
R = 10000;

n = 10:0.1:14;
f = zeros(length(n),1);
for (i = 1:1:length(n))
  f(i) = 10^n(i);
end;

P = zeros(length(n),1);
for (i = 1:1:length(n))
  P(i) = 2*R*(h*f(i)/2 + h*f(i)/(exp((h*f(i))/(k*T)) - 1));
end;

semilogx(f,P);
xlabel('f -->');
ylabel('PSD, Pv(f) -->');
title('PSD for a Thermal Noise Source');


