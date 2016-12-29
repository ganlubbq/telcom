% File: P4_22.m  for problem 4-22

clear;
clf

t = 0:0.1:4;

% Creating vin(t) using the first six terms of the Fourier
% series representation for a triangle wave;
vin = 0;
for (m = 1:1:6);
  vin = vin + cos((2*m-1)*pi*t)/(2*m-1)^2;
end;
vin = 4/(pi^2)*vin + 0.5;
vin = vin(:);

vout = 5*vin + 1.5*vin.^2 + 1.5*vin.^3;
vol = 5*vin;

% Creating sampled versions of vout and vol
M = 5;
N = 2^M;
T = 2;
dt = T/N;
n = 0:1:N-1;
tk = n*dt;
vin1 = 0;
for (m = 1:1:6);
  vin1 = vin1 + cos((2*m-1)*pi*tk)/(2*m-1)^2;
end;
vin1 = 4/(pi^2)*vin1 + 0.5;
vin1 = vin1(:);
voutk = 5*vin1 + 1.5*vin1.^2 + 1.5*vin1.^3;
volk = 5*vin1;

% Computing the FFT data points
W1 = fft(voutk);
W2 = fft(volk);

% Since the waveform is periodic, the spectrum will only contain delta
% functions.  Evaluate the weights of the delta functions by using the
% FFT to calculate the complex Fourier series coefficients.
fn = -N/2:1:N/2-1;
fn = fn/T;
fs = 1/dt;

cout = 1/N*fftshift(W1);
col = 1/N*fftshift(W2);

subplot(221)
plot(t,vout,t,vol,'--');
xlabel('t -->');
ylabel('Vout (solid), Linear part of Vout (dashed)');
title('Output Waveform and Linear Part of Output');

subplot(222)
plot(fn,abs(cout),'x');
for (i = 1:1:length(n))
  line([fn(i) fn(i)], [0 abs(cout(i))]);
end;
xlabel('f -->');
ylabel('|Vout(f)|');
title('Magnitude Spectrum of the Output');

subplot(224)
plot(fn,abs(col),'x');
for (i = 1:1:length(n))
  line([fn(i) fn(i)], [0 abs(col(i))]);
end;
xlabel('f -->');
ylabel('|VLPout(f)|');
title('Magnitude Spectrum for Linear Part of output');



