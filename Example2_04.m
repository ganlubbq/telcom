% File: Example2_04.m for Example 2-4

% This example plots Eq (2-44) where
% the second term is negligible for positive 
% frequences if fo is sufficiently large. 

% The Magnitude-Phase Spectral Functions
% will be plotted for the case of positive frequencies.

% The Magnitude function will be plotted in dB units.
% The Phase function will be plotted in degree units.

clear;

T  = 2;
fo = 500;

f = (fo-50):1:(fo+50);

for (k = 1:101)
    W(k) = (T/2j)*1/(1+2j*pi*T*(f(k)-fo));
end;

B = log(W);
WdB = (20/log(10))*real(B);
Theta = (180/pi)*imag(B);

subplot(211);
plot(f,WdB);
xlabel('f');
ylabel('W(f) in dB');
grid;

subplot(212);
plot(f,Theta);
xlabel('f');
ylabel('Angle of W(f) in degrees');
grid;




