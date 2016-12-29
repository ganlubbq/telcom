% File: P5_57.m for Problem 5-57

clear;

T = 0.0025;
t = 0:0.00008:8*T;
wc = 1000*pi;
a = [1 -1 -1 1 -1 1 1 -1];

% Creating m(t)
m = zeros(length(t),1);
for (i = 1:1:length(t))
  for (k = 1:1:length(a))
    if(abs(t(i) - (k-1)*T - T/2) <= T/2)
      m(i) = m(i) + a(k);
    end;
  end;
end;

% Select the value for h to be used
h = 0.2;
Dp = h*pi/2;
s = 10*cos(wc*t + Dp*m');

% Assume that the signal is periodic with period T0 = 8T.  The
% spectrum can be obtained from the complex Fourier series
% cofficients.  Furthermore, the complex Fourier series coefficients
% may be calculated using the FFT.

M = 6;
N = 2^M;
n = 0:1:N-1;
T0 = 8*T;
dt = T0/N;
fs = 1/dt;

% Creating a sampled version of the signal
tk = n*dt;
% Creating ms(t)
ms = zeros(length(tk),1);
for (i = 1:1:length(tk))
  for (k = 1:1:length(a))
    if(abs(tk(i) - (k-1)*T - T/2) <= T/2)
      ms(i) = ms(i) + a(k);
    end;
  end;
end;
ss = 10*cos(wc*tk + Dp*ms');

% Computing the FFT data points
W = fft(ss);
fn = -N/2:1:N/2-1;
fn = fn/T0;

cn = 1/N*fftshift(W);

subplot(311)
plot(t,m);
xlabel('t in sec -->');
ylabel('m(t)');
axis([0 0.02 -1.2 1.2])
title('Modulating Signal');

subplot(312)
plot(t,s);
xlabel('t in sec -->');
ylabel('s(t)');
title(['BPSK Signal, h = ',num2str(h)]);

subplot(313)
stem(fn,abs(cn));
xlabel('f in Hz -->');
ylabel('|S(f)|');
axis([-1500 1500 0 5])
title(['Magnitude Spectrum for BPSK Signal, h = ',num2str(h)]);
%title('Magnitude Spectrum');


