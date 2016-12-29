% File: P2_92.m

clear;

M = 6;
N = 2^M;
T1 = 10;
T = 1;
dt = T1/N;
n = 0:1:N-1;
tk = n*dt;
tk = tk(:);

% Generating waveform
% Note in the FFT time domain, points for negative time are the same as those
% measured from the end of the data span-lenght T1 for positive time.
w = zeros(length(n),1);
for (i = 1:1:length(w))
  if (tk(i) < T)
    w(i) = -1/T*(tk(i)-T);
  end;
  if (tk(i) > (T1-T))
    w(i) = w(i) + (tk(i)-(T1-T))/T;
  end;
end;

% Approximating the Fourier Integral using the FFT
W = dt*fft(w);
fn = n/T1;
fs = 1/dt;

subplot(211);
plot(tk,w);
title('Time Waveform (as modified to be used in the FFT calculation) ');
xlabel('t in sec -->');
ylabel('w(t)');

subplot(212);
plot(fn,abs(W));
title(['Magnitude Spectrum via FFT out to fs where fs=',num2str(fs),' ']);
xlabel('f in Hz -->');
ylabel('|W(f)|');
axis;


