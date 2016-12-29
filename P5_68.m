
% File: P5_68.m for Problem 5-68

clear;
clf

% Calculate the complex envelope PDF, Pg(f),  for QPSK
% with a square-root raised cosine pulse.
% Using (3-69), F(f) = sqrt(He(f)), and Pg(f)= K*(F(f))^2
% Thus,  Pg(f) = K*He(f) where He(f) is given by Fig. 3-26a.

% Select the rolloff factor, r
r = 0.35;
R = 1;
fo =0.5*(R/2);
N = 100;
n = 0:1:N-1;
df=2*fo/(N-1);
f = n*df;
fdel=r*fo;
f1=fo-fdel;
B=fo+fdel;
N1=round(f1/df)+1;
N2=round(f1/df)-1;
NB=round(B/df)+1;

% Creating PSD of Complex Envelope
PSD=zeros(length(f),1);
for (i = 1:1:N1)
   PSD(i)=1;
end;
for  (i=N1:1:NB)
   PSD(i) = 0.5*(1+cos(0.5*pi*(f(i)-f1)/fdel));
end;
for (i=NB:1:length(f))
   PSD(i) = 0;
end;


% Plot PSD
plot(f,10*log10(PSD));
xlabel('f (Hz) -->');
ylabel('Pg(f) in dB');
axis([0 0.5 -30 2])
grid;
title(['PSD of the Complex Envelope for QPSK, B = ',num2str(B),' Hz']);

