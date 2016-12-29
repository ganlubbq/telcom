% File: Fxample7_03.m for Example 7-3

% Note: To evaluate these results, Eqs. (7-24a), (7-26a), and (7-28a) are
% used.

clear;

% Select B and T
T = 1;
B = 2;

% x is Eb/No in dB
x = -1:0.5:15;

% Generating Pu(x), Pp(x), and Pb(x)

Pu = zeros(length(x),1);
Pp = zeros(length(x),1);
Pb = zeros(length(x),1);

for (i = 1:1:length(x))
  Pu(i) = sqrt((1/(2*T*B))*10^(x(i)/10));
  Pp(i) = sqrt((1/(T*B))*10^(x(i)/10));
  Pb(i) = sqrt((1/(2*T*B))*10^(x(i)/10));
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
%title('BER for LPF Receiver with B = ');
title(['BER for LPF Receiver with B = ',num2str(B),' and T = ',num2str(T)]);
grid




