% File: SA2_3.m for Study-aid Example SA2-3

clear;
clf
% Referring to Eq. (2-52), the 
% Rectangular pulse width is T sec.
T=10;
% Rectangular pulse offset is Tos sec.
Tos=5;
f = -4:0.02:4;

% W(f) consists of both a continuous spectrum and a discrete spectrum.
% The computer cannot plot infinite values for the delta functions, 
% so plot the weights of the delta functions instead in 
% the magnitude spectrum.  The angle of the delta function dominates in 
% the phase spectrum at the frequency where the delta function occurs. 


% Continuous part -- Magnitude Spectrum
Wmag = zeros(length(f),1);
for (i=1:1:length(Wmag))
   Wmag(i) = T*abs(SA(pi*f(i)*T)); 
end;

% Continuous part -- Phase spectrum
Theta = zeros(length(f),1);
for (i=1:1:length(Theta))
Theta(i)  = (180/pi)*(-2*pi*f(i)*Tos);   
end;

% Modify the Spectrum to include the Delta functions;
for (i = 1:1:length(f))
   if (f(i) == -3)
    Wmag(i) = 4;
    Theta(i)= 90;   
 end;
   if (f(i) == 3)
   Wmag(i) = 4;
   Theta(i)= -90;   
   end;   
 end;
 
 

subplot(211)
plot(f,Wmag);
xlabel('f, Hz-->');
ylabel('|W(f)|');
title('Magnitude Spectrum'); 

subplot(212)
plot(f,Theta);
xlabel('f, Hz-->');
ylabel('Theta(f), Degrees');
title('Phase Spectrum'); 

