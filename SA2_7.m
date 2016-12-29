% File: SA2_7.m for Study-aid Example SA2-7

clear;
 
% Calculate the PSD for periodic  e^t using the FFT. 

M = 6;
N = 2^M;
n = 0:1:N-1;
T = 1.0;
dt = T/N;
t = n*dt;

% Creating time waveform
w = exp(t);

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

% Generating complex Fourier series coefficients
cn = 1/N * W;

% Generating square abs Fourier series coefficients
for(i=1:1:length(n));
    cn2(i)=(abs(cn(i)))^2;
end;


% Converting samples 0,1,2,3,...,N-1 to a positive and negative
% Note that (2-187) is a built in function: fftshift
cn2 = fftshift(cn2);
cn2 = [cn2 cn2(1)]';
cn2 = cn2(:);



% Plotting results

subplot(311);
plot(t,w);
xlabel('t (sec) -->');
ylabel('w(t)');
title('Time Waveform');
axis([0 1 0 3])

subplot(312);
plot(n,abs(W),'o');
for (i = 1:1:length(n))
  line([n(i) n(i)], [0 abs(W(i))]);
end;
xlabel('n');
ylabel('|W(n)|');
title('FFT Data Points');
axis([0 N 0 150])


subplot(313);
plot(fn1,cn2,'o');
for (i = 1:1:length(n1))
  line([fn1(i) fn1(i)], [0 cn2(i)]);
end;
xlabel('f  (Hz) -->');
ylabel('|c(n)|^2');
title('POWER SPECTRAL DENSITY, P(f)');
axis([-10 10 0 3])



