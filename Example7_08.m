% File: Example7_08.m for Example 7-8

clear;
clf

ep = 0:-0.2:-7;

% Select the value of M
n = 8;
M = 2^n;
M1 = M;
SNRout = zeros(length(ep),1);
for (i = 1:1:length(SNRout))
  Pe(i) = 10^(ep(i));
  SNRout(i) = 3*M^2/(1+4*(M^2-1)*Pe(i));
end;

SNRoutdB1 = 10*log10(SNRout);


% Select the value of M
n = 3;
M = 2^n;
M2 = M;
SNRout = zeros(length(ep),1);
for (i = 1:1:length(SNRout))
  SNRout(i) = 3*M^2/(1+4*(M^2-1)*Pe(i));
end;

SNRoutdB2 = 10*log10(SNRout);


%plot(ep,SNRoutdB);
semilogx(Pe,SNRoutdB1,'-',Pe,SNRoutdB2,'--');
xlabel('Pe -->');
ylabel('SNRoutdB -->');
axis([10^-7 1 0 60])
title(['(S/N)pk for PCM with M =  ',num2str(M1),' (solid) and M = ',num2str(M2),' (dashed)']);
fprintf('\nCompare plot with Figure 7-17\n');




