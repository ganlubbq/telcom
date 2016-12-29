% File: Example3_03.m for Example 3-3
% This is a plot of Eq. (3-16b)
clear;
clf

n = 6;
ep = -7:0.5:-1;
M = 2^n;
for k = 1:1:length(ep)
     Pe(k) = 10^ep(k);
end

SNRout = zeros(length(ep),1);
for (i = 1:1:length(SNRout))
  SNRout(i) = M^2/(1+4*(M^2-1)*(10^ep(i)));
end;

SNRoutdB = 10*log10(SNRout);

semilogx(Pe,SNRoutdB);
xlabel('Pe -->');
ylabel('SNRoutdB');
axis([10^(-7) 0.1 0 40]);
title('Recovered Analog Average SNR vs Pe of PCM Signal');





