% File: P3_31.m for Problem 3-31

clear;
clf

A = 1;
R = 1;
Tb = 1/R;
f = 0:0.05:5;

% The PSD for Unipolar NRZ is given by (3-39) and consists of
% both a continuous spectrum and a discrete spectrum.  The computer
% cannot plot infinite values for the delta functions, so plot the
% weights of the delta functions instead.  Thus (3-39) will be broken
% into two functions, one for the continous spectral plot and one
% for the discrete spectral plot.

% Continuous part
PUNRZcf = A^2*Tb/4*(SA(pi*f*Tb)).^2; 

% Discrete part;
PUNRZdf = zeros(length(f),1);
for (i = 1:1:length(PUNRZdf))
  if (f(i) == 0)
    PUNRZdf(i) = A^2/4;
  end;
end;

PUNRZf = PUNRZcf + PUNRZdf;

% Use (3-41) for the Polar NRZ spectrum
PPNRZf = A^2*Tb*(SA(pi*f*Tb)).^2;

% The PSD for Unipolar RZ is given by (3-43) and consists of
% both a continuous spectrum and a discrete spectrum.  The computer
% cannot plot infinite values for the delta functions, so plot the
% weights of the delta functions instead.  Thus (3-43) will be broken
% into two functions, one for the continous spectral plot and one
% for the discrete spectral plot.

% Continuous part
PURZcf = A^2*Tb/16*(SA(pi*f*Tb/2)).^2; 

% Discrete part;
PURZdf = zeros(length(f),1);
for (i = 1:1:length(PURZdf))
  if (rem(f(i),R) == 0)
    PURZdf(i) = A^2/16*SA(pi*f(i)*Tb/2)^2;
  end;
end;

PURZf = PURZcf + PURZdf;

% Using (3-45) the PSD for Bipolar RZ is:
PBRZf = A^2*Tb/4*(SA(pi*f*Tb/2)).^2 .* (sin(pi*f*Tb)').^2;

% Using (3-46) for the Manchester NRZ spectrum
PMNRZf = A^2*Tb*(SA(pi*f*Tb/2)).^2 .* (sin(pi*f*Tb/2)').^2;

PLOT_PR(5);
plot(f,PUNRZf);
xlabel('f');
title('PSD of Unipolar NRZ'); 
pause;

plot(f,PPNRZf);
xlabel('f');
title('PSD of Polar NRZ'); 
pause;

plot(f,PURZf);
xlabel('f');
title('PSD of Unipolar RZ'); 
pause;

plot(f,PBRZf);
xlabel('f');
title('PSD of Bipolar RZ');
pause;

plot(f,PMNRZf);
xlabel('f');
title('PSD of Manchester NRZ');



