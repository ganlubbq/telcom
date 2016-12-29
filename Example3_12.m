% File: Example3_12.m for Example 3-12 and Eq. (3-56)

clear;
clf

SNRdB = 0:5:100;
SNR = zeros(length(SNRdB),1);
for (i = 1:1:length(SNRdB))
  SNR(i) = 10^(SNRdB(i)/10);
end;

nmax = log(1 + SNR)/log(2);

plot(SNRdB,nmax);
xlabel('SNRdB -->');
ylabel('nmax');
title(['Maximum Spectral Efficiency vs (S/N)dB']);