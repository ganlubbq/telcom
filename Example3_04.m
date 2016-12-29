% File: Example3_04.m for Example 3-4
% This is a plot of Eq. (3-16a)
clear;
clf

fs = input('Select a value for the sampling frequency, fs:');
n = input('Select a value for the number of bits per sample, n:');
R = fs*n;
fprintf(['\nThe bit rate is R=',num2str(R),'bits/sec\n'])
fprintf(['\nThe minimum absolute bandwidth of the PCM signal is, B=',num2str(R/2),'Hz\n'])
fprintf(['\nFor a rectangular pulse shape for the bits,the 1st null PCM bandwidth is B=',num2str(R),'Hz\n'])

% Using Eq (3-16a), the SNRdB is given by the the following plot
fprintf(['\nThe Peak SNRdB is given by the plot.\n'])

ep = -10:0.5:-1;
M = 2^n;
for k = 1:1:length(ep)
     Pe(k) = 10^ep(k);
end

SNRout = zeros(length(ep),1);
for (i = 1:1:length(SNRout))
  SNRout(i) = 3*(M^2)/(1+4*(M^2-1)*(10^ep(i)));
end;

SNRoutdB = 10*log10(SNRout);

semilogx(Pe,SNRoutdB);
xlabel('Pe -->');
ylabel('SNRoutdB');
axis([10^(-10) 0.1 0 80]);
title('Recovered Analog Peak SNR vs Pe of PCM Signal');





