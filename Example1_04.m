% File: Example1_4.m    for Example 1-4

clear;

% B is the system bandwidth in Hz.  Note: 3300 Hz is typical
% for the bandwidth of a twisted-pair telephone line channel.
% Note: For the definition of dB, refer to Eq (2-19), where S=Pout
% and N=Pin 

B = 3300;
SNRdB = 0:6:60;

SNR = zeros(length(SNRdB),1);
for (i = 1:1:length(SNRdB))
  SNR(i) = 10^(SNRdB(i)/10);
end;

C = B/log(2)*log(1 + SNR);

plot(SNRdB,C);
xlabel('SNR in dB');
ylabel('Capacity in bits/sec');
title('Shannon Channel Capacity');
grid;




