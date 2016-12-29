% File: P7_06.m for Problem 7-6

clear;
clf

SNRdB = 0:0.1:15;

for (i = 1:1:length(SNRdB))
   SNR(i) = 10^(SNRdB(i)/10);
   Pe(i)  = Q(sqrt(0.5*SNR(i)));
end;

semilogy(SNRdB,Pe);
xlabel('SNRdB');
ylabel('Pe(SNRdB) -->');
title('BER for Unipolar Signaling and a MF Receiver');
grid;

