% File: Example7_10.m for Examle 7-10

clear;
clf

SNRbdB = 10:1:35;

% Select the modulation index B=Beta
B = 10;
B1 = B;
for (i = 1:1:length(SNRbdB))
  R(i) = 10^(SNRbdB(i)/10);
  SNRo(i) = 1.5*B^2*R(i)/(1+(12*B/pi)*R(i)*exp(-R(i)/(2*(B+1))));
  SNRodB1(i)=10*log10(SNRo(i));
end;

% Select the modulation index B=Beta
B = 2;
B2 = B;
for (i = 1:1:length(SNRbdB))
  R(i) = 10^(SNRbdB(i)/10);
  SNRo(i) = 1.5*B^2*R(i)/(1+(12*B/pi)*R(i)*exp(-R(i)/(2*(B+1))));
  SNRodB2(i)=10*log10(SNRo(i));
end;

fprintf('\nSee Window for plot. Compare with Fig. 7-24.\n');

plot(SNRbdB,SNRodB1,'-',SNRbdB,SNRodB2,'--');
xlabel('SNRbdB -->');
ylabel('SNRodB -->');
title(['FM Output (S/N)dB  for  Bf =  ',num2str(B1),' (solid)  and Bf = ',num2str(B2),' (dashed)']);

