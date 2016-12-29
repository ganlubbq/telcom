% File: Example2_10.m for Example 2-10

% This example plots Eq (2-63) where
% the first term is negligible for positive 
% frequences if fo is sufficiently large. 

% The Magnitude-Phase Spectral Functions
% will be plotted for the case of positive frequencies.

% The Magnitude function will be plotted in dB units.
% The Phase function will be plotted in degree units.

clear;

T  = 0.05;
fo = 500;
A = 10;

f = (fo-100):0.1:(fo+100);

x = pi*T*(f-fo);
W = (A/2)*T*(SA(x));


subplot(311);
plot(f,abs(W));
xlabel('f');
ylabel('W(f)');
grid;


B = log(W);
WdB = (20/log(10))*real(B);

for k = 1:length(f)
  if WdB(k)<-100;
     WdB(k) = -100;
  end
end


Theta = (180/pi)*imag(B)-90;

subplot(312);
plot(f,WdB);
xlabel('f');
ylabel('W(f) in dB');
grid;

subplot(313);
plot(f,Theta);
xlabel('f');
ylabel('Angle of W(f) in degrees');
grid;

