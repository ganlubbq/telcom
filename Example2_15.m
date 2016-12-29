% File: Example2_15.m   for Example 2-15

% The average normalized power will be evaluated for a FS waveform that
% approximates a biased square wave. Assume that the square wave 
% has a peak value of A volts as shown in Fig. 2-12a and a 50% duty cycle.
% For the approximation to a square wave, use N harmonics of the 
% Fourier Series where the FS coefficients are given by (2-120).

clear;

% For evaluating a numerical value for the average power, 
% enter the value selected for A.
fprintf('Enter the peak value for the square wave, A.\n');
A = input('The value of A is selected to be:  ');

% The exact answer for the average power is given by (2-13) 
% where (2-4) is used. The result is
Pexact=(A^2)/2;

fprintf('\n\nThe exact average normalized power is %G Watts\n',Pexact);
fprintf('\n')

% Enter the Number of Harmomics to include in the F.S.
fprintf('Enter the number of Harmonics to use in the Fourier Series, N.\n');
N = input('N should be an odd integer: ');

% Evaluate tne complex Fourier coefficients using Eq. (2-120) for n>0
% Since, from (2-125), the magnitude of cn will be used, we can neglect
% the exponential function in (2-120).  Thus, 
for n = 1:1:N
  c(n) = (A/2)*SA(pi*n/2);
end;

P = (A/2)^2 + 2*sum(c.*conj(c));

fprintf('\n\nThe approximate average normalized power is %G Watts\n',P);
fprintf('\n')




