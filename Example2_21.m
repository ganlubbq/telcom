% File: Example2_21.m     for Example 2-21 

clear;

% Calculate the spectrum for a sinusoid using the FFT. 

M = 4;
N = 2^M;
fo = 10;
wo = 2*pi*fo;
n = 0:1:N-1;
T = 1/fo;
dt = T/N;
t = n*dt;

% Creating time waveform
w = 3*sin(wo*t + (pi/180*20));

% Compute the FFT data points.
W = fft(w);
W = W(:);

% SINCE THE WAVEFORM IS PERIODIC, 
%      USE COMPLEX FOURIER SERIES TO GET SPECTRUM.
% ==> Compute the FS coefficients from the FFT data using (2-186).
% Then use (2-109) to get the spectrum.

n1 = -N/2:1:N/2;
fn1 = n1/T;
fs = 1/dt;

% Generating complex fourier series coefficients
cn = 1/N * W;
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

subplot(2,2,1)
plot(t,w);
xlabel('t (sec) -->');
ylabel('w(t)');
title('Time Waveform');
grid;

subplot(2,2,3)
plot(n,abs(W),'o');
for (i = 1:1:length(n))
  line([n(i) n(i)], [0 abs(W(i))]);
end;
xlabel('n');
ylabel('|W(n)|');
title('FFT Data Points');
axis([0 16 0 25])
grid;


subplot(2,2,2)
plot(fn1,abs(cn),'o');
for (i = 1:1:length(n1))
  line([fn1(i) fn1(i)], [0 abs(cn(i))]);
end;
xlabel('f  (Hz) -->');
ylabel('|c(n)|');
title('MAGNITUDE SPECTRUM, |W(f)|');
axis([-50 50 0 2])
grid;

subplot(2,2,4)
plot(fn1,zeros(length(fn1),1),'w',fn1,Theta,'o');
for (i = 1:1:length(n1))
  line([fn1(i) fn1(i)], [0 Theta(i)]);
end;
xlabel('f  (Hz) -->');
ylabel('theta(f) (degrees)');
title('PHASE SPECTRUM, Theta(f)');
axis([-50 50 -100 100])
grid;



