% File: Example3_06.m  for Example 3-6
% This is a plot of Figure 3-11a using an orthonormal series

clear;
clf
d = [1 0 1];
T = 1;
N = 3;

t = -1:0.01:5;

s = 5*sqrt(T)*d
for i = 1:1:length(t);
    phi(i) =(1/sqrt(T))* PULSER(t(i)-0.5,T);
end

for m = 1:1:length(t)
   for k = 1:1:N
       terms(k) = s(k)*(1/sqrt(T))* PULSER(t(m)-T*(k-0.5),T);
   end
   st(m) = sum(terms);
end

subplot(211)
plot(t,phi);
xlabel('t in sec -->');
ylabel('psi(1)');
axis([-1 5 0 1.5])
title([' phi(1) Orthonormal Pulse)']);

subplot(212)
plot(t,st);
xlabel('t in sec -->');
ylabel('s(t)');
axis([-1 5 0 6])
title(['Signal Waveform for N=',num2str(N),' ']);
