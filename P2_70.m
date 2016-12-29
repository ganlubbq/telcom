% File: P2_70.m

clear;

% N is the number of Harmonics used.
% Using analytical results only for this problem.

N = 10;
n = -N:1:N;
for (i = 1:1:length(n))
  f(i) = n(i)*0.5; 
  if (n(i) ~= 0)
    cn(i) = 2/((n(i)*pi)^2)*(1 - (-1)^n(i));
  else
    cn(i) = 0;
  end;
end;
cn = cn(:);

PSD = cn.*cn;


fprintf('\nSee Window for plot.\n');
subplot(211);
plot(f,abs(cn),'o');
for (i = 1:1:length(n))
  line([f(i) f(i)], [0 cn(i)]);
end;
title('Magnitude Spectrum');
xlabel('f  Hz -->');
ylabel('|V(f)|');


subplot(212);
plot(f,PSD,'o');
for (i = 1:1:length(n))
  line([f(i) f(i)], [0 PSD(i)]);
end;

title('Power Spectral Density');
xlabel('f  Hz -->');
ylabel('P(f)');


%Calculating the normalized average power
P = (cn'*cn);
fprintf('\n\nThe average normalized power is %e Watts\n',P);

