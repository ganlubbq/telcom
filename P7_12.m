% File: P7_12.m for Problem 7-12

clear;
clf

EbNodB = 0:0.1:15;

for (i = 1:1:length(EbNodB))
   EbNo(i) = 10^(EbNodB(i)/10);
   Pea(i)  = Q(sqrt(0.25*EbNo(i)));
   Peb(i)  = Q(sqrt(EbNo(i)));
end;

subplot(211)
semilogy(EbNodB,Pea);
xlabel('EbNodB -->');
ylabel('Pe(EbNodB)');
title('(a) BER for Unipolar Signaling with a RC Filter Receiver, Beq=2/T');
grid;

subplot(212)
semilogy(EbNodB,Peb);
xlabel('EbNodB -->');
ylabel('Pe(EbNodB)');
title('(b) BER for Unipolar Signaling with a Matched Filter Receiver');
grid;

