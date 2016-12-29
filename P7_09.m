% File: P7_09.M for Problem 7-9

clear;
clf

EbNodB = 0:0.1:15;

for (i = 1:1:length(EbNodB))
   EbNo(i) = 10^(EbNodB(i)/10);
   Peb(i)  = Q(sqrt(0.92656*EbNo(i)));
   Pec(i)  = Q(sqrt(2.0*EbNo(i)));
end;

subplot(211)
semilogy(EbNodB,Peb);
xlabel('EbNodB -->');
ylabel('Pe(EbNodB)');
title('(b) BER for Polar Signaling with a Butterworth Filter Receiver');
grid;

subplot(212)
semilogy(EbNodB,Pec);
xlabel('EbNodB -->');
ylabel('Pe(EbNodB)');
title('(c) BER for Polar Signaling with a Matched Filter Receiver');
grid;

