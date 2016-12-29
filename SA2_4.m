% File: SA2_4.m for Study-aid Example SA2-4

clear;


f = -2:0.02:2;

% W(f) consists of both a continuous spectrum and a discrete spectrum.
% The computer cannot plot infinite values for the delta functions, 
% so plot the weights of the delta functions instead in 
% the magnitude spectrum.  The angle of the delta function dominates in 
% the phase spectrum at the frequency where the delta function occurs. 


% Continuous part of Spectrum
Wmag = zeros(length(f),1);
Theta = zeros(length(f),1);
for (i=1:1:length(f))
   Wmag(i) = abs(-5/(2+2j*pi*f(i))); 
   Theta(i)=(180/pi)* angle(-5/(2+2j*pi*f(i)));
end;


% Modify the Spectrum to include the Delta functions;
for (i = 1:1:length(f))
   if (f(i) == 0)
    Wmag(i) = 5;
    Theta(i)= 0;   
   end;
end;
 
 

subplot(211)
plot(f,Wmag);
xlabel('f, Hz -->');
ylabel('|W(f)|');
title('Magnitude Spectrum'); 

subplot(212)
plot(f,Theta);
xlabel('f, Hz-->');
ylabel('Theta(f), Degrees');
title('Phase Spectrum'); 

