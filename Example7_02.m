% File: Fxample7_02.m for Example 7-2

% Note: To evaluate these results, Eqs. (7-24b), (7-26b), and (7-28b) are
% used.

clear;

% x is Eb/No in dB
x = -1:0.5:15;

% Generating Pu(x), Pp(x), and Pb(x)

Pu = zeros(length(x),1);
Pp = zeros(length(x),1);
Pb = zeros(length(x),1);

for (i = 1:1:length(x))
  Pu(i) = sqrt(10^(x(i)/10));
  Pp(i) = sqrt(2*10^(x(i)/10));
  Pb(i) = sqrt(10^(x(i)/10));
end;

Pu = Q(Pu);
Pp = Q(Pp);
Pb = 1.5*Q(Pb);

fprintf('\nSee Window for plot.\n');

% Plotting results
semilogy(x,Pu,':',x,Pp,'-',x,Pb,'--');
xlabel('EbNodB -->');
ylabel('BER for Polar(solid), Unipolar(dotted), and Bipolar(dashed)');
axis([-1 15 10^-7 1])
title('BER for Matched Filter Receivers');
grid




