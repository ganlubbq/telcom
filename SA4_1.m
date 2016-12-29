% File: SA4_1.m   for SA4-1

clear;
clf

% Calculate the spectrum for an AM signal using the FFT. 

% Let TIME be in msec units and FREQUENCY be in kHz Units.
% It is difficult to distinguish fc at 1150 kHz from sidebands
% that are located only 1 kHz away. To ease computation and 
% plotting, let fc=10 kHz instead of 1150 kHz. 

Ac = 500;
fc = 10;
wc = 2*pi*fc;
wa = 2*pi*1;
M = 8;
N = 2^M;
T = 5;
n = 0:1:N-1;
dt = T/N;
t = n*dt;

% Creating time waveform
for (i=1:1:length(t))
   s(i) = Ac*(1+0.8*sin(wa*t(i)))*cos(wc*t(i));
end;   

% Compute the FFT data points.
S = fft(s);
S = S(:);

% SINCE THE WAVEFORM IS PERIODIC, THE SPECTRUM CONSISTS OF
% DELTA FUNCTIONS as shown by (2-109) with weights given by 
% the complex Fourier Series coefficients. 
%      USE COMPLEX FOURIER SERIES TO GET SPECTRUM.
% ==> Compute the FS coefficients from the FFT data using (2-186).
% Then use (2-109) to get the spectrum.

n1 = -N/2:1:N/2;
fn1 = n1/T;
fs = 1/dt;

% Generating complex fourier series coefficients
cn = 1/N * S;
% Generating Phase
Theta = (180/pi)*angle(cn + 0.001);

% Converting samples 0,1,2,3,...,N-1 to a positive and negative
% Note that (2-187) is a built in command: fftshift
cn = fftshift(cn)';
Theta = fftshift(Theta)';
cn = [cn cn(1)];
Theta = [Theta Theta(1)];
cn = cn(:);
Theta = Theta(:);


% Plotting results

subplot(221)
plot(t,s);
xlabel('t (msec) -->');
ylabel('s(t)');
title('Time Waveform');

subplot(223)
plot(n,abs(S),'o');
for (i = 1:1:length(n))
  line([n(i) n(i)], [0 abs(S(i))]);
end;
xlabel('n');
ylabel('|S(n)|');
title('FFT Data Points');


subplot(222)
plot(fn1,abs(cn),'o');
for (i = 1:1:length(n1))
  line([fn1(i) fn1(i)], [0 abs(cn(i))]);
end;
xlabel('f  (kHz) -->');
ylabel('|S(f)|');
title('MAGNITUDE SPECTRUM, |S(f)|');
axis([-20 20 0 300])

subplot(224)
plot(fn1,zeros(length(fn1),1),'w',fn1,Theta,'o');
for (i = 1:1:length(n1))
  line([fn1(i) fn1(i)], [0 Theta(i)]);
end;
xlabel('f  (kHz) -->');
ylabel('theta(f) (degrees)');
title('PHASE SPECTRUM, Theta(f)');
axis([-20 20 -100 100])



