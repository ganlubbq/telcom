% File: SA8_3.M

clear;

% Set Pt, f, R, B, do, Fdb, n, and XdB to the desired values.

Pt = 0.0005;
f = 2.4e9;
R = 2e6;
B = 4e6;
do = 50;
d = 200
GatdB = 2.15;
GardB = 2.15;
FdB = 8;
Tso = 0;
n = 3;
XdB = 7;

%Evaluate quanties for Link Budget
PtdBw = 10*log10(Pt);
PeirpdBw = PtdBw + GatdB
lambda =3.0e8/f;
F = 10^(FdB/10);
Te = 290*(F-1);
Tsy = Tso + Te
TsydB = 10*log10(Tsy);
kdB = 10*log10(1.38e-23);
BdB = 10*log10(B);
LfsdB = 20*log10(4*pi*do/(3.28*lambda));

%Evaluate LdB and CNRdB for the distance d selected above
LdB = LfsdB + 10*n*log10(d/do) + XdB
CNRdB = PeirpdBw - LdB + GardB - TsydB - kdB - BdB

%Evaluate EbNo and BER for a distance of d selected above
CNR = 10^(CNRdB/10);
EbNo = (B/R)*CNR;
EbNodB = 10*log10(EbNo)
BER = 0.5*exp(-(R/(2*B))*EbNo)

%Compute CNRdB and BER as a function of distance
K =100;
k = 0:1:K;
dd = (500-do)/K;
d = do + k*dd;
for (i = 1:1:length(d))
  LdB(i) = LfsdB + 10*n*log10(d(i)/do) + XdB;
  CNRdB(i) = PeirpdBw - LdB(i) + GardB - TsydB - kdB - BdB;
  CNR(i) = 10^(CNRdB(i)/10);
  EbNo(i) = (B/R)*CNR(i);
  EbNodB(i) = 10*log10(EbNo(i));
  BER(i) = 0.5*exp(-(R/(2*B))*EbNo(i));
end;

%Plot CNRdB vs distance
PLOT_PR(2);
plot(d,CNRdB);
xlabel('d (feet) -->');
ylabel('CNRdB');
title('CNR at detector input of receiver');
pause;

%Plot BER vs distance
semilogy(d,BER);
xlabel('d (feet) -->');
ylabel('BER');
axis([50 500 1e-10 1]);
title('BER for data at receiver output');
