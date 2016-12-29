% File: Example6_06.m for Example 6-6

clear;
clf
global A Rb Td

% Select values for Rb and fmax
Rb = 1;
Tb = 1/Rb;
df = 0.02*Rb;
fmax = 20*Rb;
f = 0:df:fmax;

fprintf('\nThe integral is evaluated over the frequency range of\n');
fprintf('-fmax<f<fmax where fmax = %g',fmax)
fprintf(' Hz\n\n');

% ------------------------------------------------------------
% For RZ 
A = 2;
Td = Tb/2;

% Evaluating the integral of Eq. (6-78) over the frequency 
% range of  -fmax < f < fmax

PforRZ = 2*quad(@Example6_06PDF,0,fmax);
RMSforRZ = sqrt(PforRZ);

fprintf('\nThe Normalized Total Average Power for the RZ bipolar line code is \n');
fprintf('PforRZ = %g',PforRZ)
fprintf(' watts.\n\n');
fprintf('The RMS value for the RZ bipolar line code is');
fprintf('\nRMSforRZ = %g',RMSforRZ)
fprintf(' volts.\n\n\n');

% ------------------------------------------------------------
% For NRZ 
A = sqrt(2);
Td = Tb;

% Evaluating the integral of Eq. (6-78) over the frequency 
% range of  -fmax < f < fmax

PforNRZ = 2*quad(@Example6_06PDF,0,fmax);
RMSforNRZ = sqrt(PforNRZ);

fprintf('\nThe Normalized Total Average Power for the NRZ bipolar line code is \n');
fprintf('PforNRZ = %g',PforNRZ)
fprintf(' watts.\n\n');
fprintf('The RMS value for the NRZ bipolar line code is');
fprintf('\nRMSforRZ = %g',RMSforNRZ)
fprintf(' volts.\n\n\n');

% --------------------------------------------------------
clear global


