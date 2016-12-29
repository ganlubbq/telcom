% File: Example5_06.m for Example 5-6

clear;
clf

% fm is the frequency (Hz) of the sinusoidal modulation
% Beta is the modulation index
Ac = 1;
Beta = 5;
fm = 1;
n = 0:1:10;
f = n*fm;

G = zeros(length(n),1);
for (i = 1:1:length(n))
  G(i) = Ac*besselj(n(i),Beta);
end;

plot(f,abs(G),'o');
xlabel('f (above fc) in Hz -->');
ylabel('|G(n,Beta)|');
axis([0 10 0 0.45])
for (i = 1:1:length(n))
  line([f(i) f(i)],[0 abs(G(i))]);
end;
text(5,0.37,'Spectrum is shown for frequencies above fc');
title(['Magnitude Spectrum of the PM Signal for Beta = ',num2str(Beta), ', fm = ',num2str(fm)]);



