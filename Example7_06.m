% File: Example7_06.m for Example 7-6

clear;
clf

T = 1;
Bp = 1;
c1 = sqrt(1/(T*Bp));
c2 = 1/(2*T*Bp);

% x is Eb/No in dB
x = -1:0.5:20;

% Generating  Pe
Pp1 = zeros(length(x),1);
Pp2 = zeros(length(x),1);

for (i = 1:1:length(x))
  Pp1(i) = sqrt(10^(x(i)/10));
  Pp2(i) = (10^(x(i)/10));
end;

Pe = 0.5*Q(c1*Pp1) + 0.5*exp(-c2*Pp2);

fprintf('\nSee Window for plot.\n');

% Plotting results
semilogy(x,Pe);
xlabel('EbNodB -->');
ylabel('BER');
axis([-1 15 10^-7 1])
title('BER for OOK Signaling with Noncoherent Detection');
grid






