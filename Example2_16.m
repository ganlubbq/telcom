% File: Example2_16.m   for Example 2-16

% Plot the Power Spectral Density of a square wave shown
% in Fig. 2-12a using Eq (2-129). 
% Plot over the frequency range of -Nfo to Nfo,
% where N is selected to give a the desired frequency range. 

clear;

A = 1;

fprintf('Enter the frequency of the square wave, fo.\n');
fo = input('The value of fo is selected to be:  ');
fprintf('\n');

% For evaluating plot for the PSD, enter the peak value, A, for
% the square wave as shown in Fig. 2-12a.
fprintf('Enter the peak value for the square wave, A.\n');
A = input('The value of A is selected to be:  ');
fprintf('\n');

% Enter the Number of Harmomics to include in evaluating Eq (2-129)..
fprintf('Enter the number of Harmonics to use plot the PSD, N.\n');
N = input('N should be an odd integer: ');
fprintf('\n');

% The PSd will be plotted over the frequency range from -Nfo to Nfo.

f = -N*fo:fo:N*fo;
center = (1+length(f))/2;

% Evaluate tne complex Fourier coefficients using Eq. (2-119) for n>0
for n = 1:1:N
  c(n) = (A/2)*SA(pi*n/2);
end;

% Calculate the PSD for the Square Wave
PSD = zeros(length(f),1);
PSD(center) = (A/2)^2;

for n = 1:1:N
    for k = 1:1:(center-1)
        if f(k)==-n*fo
            PSD(k) = (c(n))^2;
        end
    end   
    for k = (center +1):1:length(f)
        if f(k)==n*fo
            PSD(k) = (c(n))^2;
        end
    end
end


% Plot the PSD for a Square Wave (i.e a Periodic waveform)
stem(f,PSD);
title(['Square Wave PSD'])
xlabel('f');
ylabel('PSD(f)');
grid;
fprintf('\n');      
