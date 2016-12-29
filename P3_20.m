% File: P3_20.m for Problem 3-20

clear;

dB = -30:1:-5;
M = 256;
n = log(M)/log(2);
mu = 255;

SNRa = 6.02*n + 4.77 - 20*log10(log(1 + mu));



plot(dB,SNRa*ones(length(dB),1));
xlabel('xrms/V at input in dB units');



