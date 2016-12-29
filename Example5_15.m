
% File: Example5_15.m doe Exmple 5-15 and Figure 5-38

clear;
clf

N=32
T=1;
PSD=0;
f = 0:0.1:30;

for n=0:N-1
   x=SA(pi*f*T-pi*(n-(N-1)/2));
  PSD=PSD+x.*x;
end

PdB = 10*log10(PSD);

plot(f,PdB);
axis([min(f) max(f) -40 5]);
xlabel('f -->');
ylabel('PSD of Complex Envelope, Pg(f), in dB');
title( ['PSD for Complex Envelope of OFDM for N=',num2str(N),'  ']);
