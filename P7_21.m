% File: P7_21.m for Problem 7-21

clear;
clf

EbNodB = 10;

EbNo = 10^(EbNodB/10);
theta = -180:5:180;

for (i = 1:1:length(theta))
   z(i) = sqrt(2*EbNo*(cos(pi*theta(i)/180))^2);
   if (abs(theta(i)) <= 90)
      Pe(i) = Q(z(i));
   else
      Pe(i) = Q(-z(i));
   end;
end;

semilogy(theta,Pe);
xlabel('theta -->');
ylabel('Pe(theta)');
title('(b) BER for BPSK Signaling with Receiver Phase Error');
grid;

