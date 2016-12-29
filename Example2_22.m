% File: Example2_22.m   for Example 2-22

% Plot the Power Spectral Density of a BPSK signal using Eq (2-199).
% Let R be the bit rate in bits/sec.
% Plot the PSD over the positive frequency range of fc-N(R/2) to fc+N(R/2),
% where N is selected to give the desired plotted frequency range. 

clear;

% Enter the values you want to use for R, fc, and N.
% Suggestion: Try R=100, fc=1000, and N=5 for the input values.

fprintf('Enter the bit rate, R.\n');
R = input('The value of R is selected to be:  ');
fprintf('\n');

fprintf('Enter the carrier frequency, fc.\n');
fc = input('The value of fc is selected to be:  ');
fprintf('\n');

fprintf('Enter N, where the frequency range of the plot is \n');
fprintf('from the frequency fc-N(R/2) to the frequency fc+N(2/2).\n');
fprintf('N must be a positive integer. \n');
N = input('The positive integer N is selected to be:  ');
fprintf('\n');

% The PSD will be plotted over the frequency range fc-N(R/2) to fc+N(R/2).
f = (fc-N*(R/2)):R/2:(fc+N*(R/2));
center = (1+length(f))/2;

% Evaluate tne PSD using Eq. (2-199)
for n = 1:1:length(f)
  PSD(n) = 0.25*(SA((n-center)*pi/2))^2;
end;
PSD(center) = 0;

% Plot the PSD for the BPSK signal
stem(f,PSD);
title(['PSD of a BPSK Signal'])
xlabel('f  in Hz -->');
ylabel('PSD(f)');
grid;
fprintf('\n');      
