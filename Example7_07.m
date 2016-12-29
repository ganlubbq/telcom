% File: Example7_06.m for Example 7-6

clear;
clf

T = 1;
Bp = 1;

% x is Eb/No in dB
x = -1:0.5:20;

% Generating  Pe for Noncoherent Detection, using Eq. (7-65) 
c = 1/(2*T*Bp);
Pp = zeros(length(x),1);

for (i = 1:1:length(x))
  Pp(i) = (10^(x(i)/10));
end;

Pnc = 0.5*exp(-c*Pp);


% Generating  Pe for Coherent MF Detection, using Eq. (7-47) 

for (i = 1:1:length(x))
  Pmf(i) = sqrt(10^(x(i)/10));
end;

Pmf = Q(Pmf);


fprintf('\nSee Window for plot.\n');

% Plotting results
semilogy(x,Pmf,'-',x,Pnc,'--');
xlabel('EbNodB -->');
ylabel('BER  for  Coherent Det (solid) & Noncoherent Det (dashed)');
axis([-1 15 10^-7 1])
title('BER for FSK Signaling ');
grid

