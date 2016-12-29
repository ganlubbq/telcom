% File: Example5_14 for Example 5-14

clear;
clf

R = 1;
Tb = 1/R;
f = 0.0001:0.05:3;

% Evaluate the PSD by using Eq. (5-115)
Pg = zeros(length(f),1);
for (i = 1:1:length(f))
  Pg(i) = cos(2*pi*Tb*f(i))^2/(1-(4*Tb*f(i))^2)^2;
end;

PdB = 10*log10(Pg);

% Note that on this plot consecutive points that are below 
% the -40dB point are connected with a straight line 
plot(f,PdB);
axis([min(f) max(f) -40 0]);
xlabel('f -->');
ylabel('PdB(f)');
title('PSD for the Complex Envelope of a MSK Signal');


