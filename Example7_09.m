% File: Example7_09.m for Example 7-9

clear;
clf

fprintf('\nAssume sinusoidal modulation with E((m/Vp)^2)=0.5\n')

% Assume sinusoidal modulation with E((m/Vp)^2)=0.5
mVp2 = 0.5;

beta = 1:0.2:10;

for (i = 1:1:length(beta))
  Idb(i) = 10*log10(6*beta(i)^2*(beta(i)+1)*mVp2);
end;

fprintf('\nSee Window for plot.\n');
plot(beta,Idb);
xlabel('Modulation Index, Beta');
ylabel('Idb -->');
title('Improvement Factor, Idb=(S/N)o/(S/N)i, for FM');





