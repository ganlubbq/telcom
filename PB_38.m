% File: PB_38.m for Problem B-38

clear;
clf

A = 8;
M = 8;
% defining step size
delta = 2*A/M;

k = 1:1:M;

y = zeros(length(k),1);
P = zeros(length(k),1);

for (i = 1:1:length(k))
  y(i) = (2*k(i)-M-1) * 0.5 * delta;
  P(i) = 1/pi*(asin((2*k(i)-M)/M) - asin((2*k(i)-M-2)/M));
end;

plot(y,P,'o');
axis([y(1) y(length(k)) 0 max(P)]);
for (i = 1:1:length(k))
  line([y(i) y(i)], [0 P(i)]);
end;
xlabel('y -->');
ylabel('P(y)');
axis([-0.5 7.5 0 0.25])
title('PDF for Quantizer output');

