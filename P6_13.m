% File: P6_13.m for Problem 6-13

clear;
clf


f = -1:0.01:1;

% The computer cannot plot infinite values for delta functions, 
% so plot the weights of the delta functions instead. 

% The PSD will broken into two functions, one for the continuous 
% spectral plot and one for the discrete spectral plot.


% Continuous part
PSDc = zeros(length(f),1);
for (i = 1:1:length(PSDc))
   PSDc(i) = 4*sqrt(pi)*exp(-(pi*f(i))^2); 
end;

% Discrete part;
PSDd = zeros(length(f),1);
for (i = 1:1:length(PSDd))
  if (f(i) == 0)
    PSDd(i) = 3;
  end;
end;

PSD = PSDc + PSDd;

subplot(211)
plot(f,PSD);
xlabel('f in Hz -->');
ylabel('P(f)');
axis([-1 1 0 10])
title('PSD (One Plot: Continuous part added to Discrete part)');

subplot(212)
plot(f,PSDc,f,PSDd,'o')
xlabel('f in Hz -->');
ylabel('P(f)');
title('PSD (Two Plots: One Continuous and One Discrete)');
 

Brms = (sqrt(2/7))/pi;
fprintf('\nThe RMS bandwidth is %g',Brms);
fprintf (' Hz\n\n'); 
