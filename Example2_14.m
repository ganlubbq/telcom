% File: Example2_14.m   for Example 2-14

% Plot the spectrum of a square wave using the corresponding 
% complex Fourier Series coefficients and Eq (2-109). 
% Plot over the frequency range of -Nfo to Nfo,
% where N is selected to give a the desired frequency range. 


% AlsoPlot the spectrum of a rectangular pulse over the same 
% frequency range where the pulse width is T=To/2



clear;

A = 1;
To = 1;
fo = 1/To;
fo

T =To/2;

% Desire plot over a frequency ranc3e from -Nfo to Nfo where N is selected
% by the user. 
N = 6
fsw = -N*fo:fo:N*fo;
center = (1+length(fsw))/2;

% Evaluate tne complex Fourier coefficients using Eq. (2-119) for n>0
for n = 1:1:N
  c(n) = A*T*fo*SA(pi*T*n*fo);
end;

fprintf('The complex Fourier coefficients c(n), for n>=0, are:\n')
% The Fourier series coefficient for n=0 is d(1)
d(1) = A*T*fo*SA(0);
for k = 2:1:N+1
    d(k) = c(k-1);
end
disp(d)

% Calculate the Spectrum for the Square Wave
center = (1+length(fsw))/2;
W = zeros(length(fsw),1);
W(center) = A*T*fo*SA(0);

for n = 1:1:N
    for k = 1:1:(center-1)
        if fsw(k)==-n*fo
            W(k) = c(n);
        end
    end   
    for k = (center +1):1:length(fsw)
        if fsw(k)==n*fo
            W(k) = c(n);
        end
    end
end

% Calculate the Spectrum for a Rectangular Pulse
frp = -N*fo:0.1:N*fo;
for k = 1:1: length(frp)
    Wpulse(k) = A*T*SA(pi*T*frp(k));
end    

% Calculate the Phase Spectrum 
B = log(Wpulse);
Theta = (180/pi)*imag(B);

% Plot Spectrum for a Square Wave (i.e a Periodic waveform)
subplot(321);
stem(fsw,W);
title(['Square Wave Spectrum'])
xlabel('f in Hz -->');
ylabel('Wsq(f)');
grid;
       
Wmag = abs(W);
        
subplot(323);
stem(fsw,Wmag);
title(['Magnitude Spectrum'])
xlabel('f in Hz -->');
ylabel('|Wsq(f)|');
grid; 

subplot(325);
plot(frp,Theta);
title(['Phase Spectrum'])
xlabel('f in Hz -->');
ylabel('Angle of Wsq(f) in degrees');
grid;

% Plot Spectrum for a Rectangular Pulse 
% (i.e. a Non-periodic waveform)
subplot(322);
plot(frp,Wpulse)
title(['Rectangular Pulse Spectrum'])
xlabel('f');
ylabel('Wp(f)');
grid;

Wmpulse = abs(Wpulse);
subplot(324);
plot(frp,Wmpulse);
title(['Magnitude Spectrum'])
xlabel('f in Hz -->');
ylabel('|Wp(f)|');
grid; 

subplot(326);
plot(frp,Theta);
title(['Phase Spectrum'])
xlabel('f in Hz -->');
ylabel('Angle of Wp(f) in degrees');
grid;
