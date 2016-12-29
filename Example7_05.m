% File: Example7_05.m for Example 7-5

clear;
clf

T = 1;
B = 2;
c = sqrt(1/(2*T*B));

% x is Eb/No in dB
x = -1:0.5:15;

% Generating  Pmf(x) and Plps

Pp = zeros(length(x),1);

for (i = 1:1:length(x))
  Pp(i) = sqrt(10^(x(i)/10));
end;

Pmf = Q(Pp);
Plpf = Q(c*Pp);

fprintf('\nSee Window for plot.\n');

% Plotting results
semilogy(x,Pmf,'-',x,Plpf,'--');
xlabel('EbNodB -->');
ylabel('BER for MF (solid) Rcvr, for LPF (dashed) Rcvr');
axis([-1 15 10^-8 1])
title('BER for FSK Signaling');
grid






