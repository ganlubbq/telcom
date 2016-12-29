% File: P3_43.m for Problem 3-43

clear;
global f1 fs;

f = 0:10:1000;
fs = 1000;
H = zeros(length(f),1);

for (i = 1:1:length(f))
  f1 = f(i);
  H(i) = quadl('P3_43I',0,0.008);
end;
fprintf('\n');

fprintf(['\n(a) See the plot of |He(f)|. \n\n']);
plot(f,abs(H));
xlabel('f   Hz -->');
ylabel('|He(f)|');
title('Magnitude of He(f)');
clear global;

dBdown = 10*log10((abs(H(length(f))))/max(abs(H)));

fprintf(['\n(b) At the bandwidth of 1,000 Hz, the noncausal filter response \n']);
fprintf(['\n   is down by -infinity db.  However, the causal filter response \n']);
fprintf(['\n   is down by only ',num2str(dBdown), ' dB at 1000 Hz. \n\n']);
