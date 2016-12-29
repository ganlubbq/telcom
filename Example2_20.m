% File: Example2_20.m   for Example 2-20

clear;

% Using the DFT, calculate the spectrum for a rectangular pulse.
% Let tend be the end of the step. 

M = 7;
N = 2^M;
n = 0:1:N-1;
tend = 1;
T = 10;
dt = T/N;
t = n*dt;

% Creating time waveform
w = zeros(length(t),1);
for (i = 1:1:length(w))
  if (t(i) <= tend)
    w(i) = 1;
  end;
end;

% Calculating FFT
W = dt*fft(w);
f = n/T;
% Calculating position of 4th NULL
pos = INDEX(f,4/tend);

subplot(411)
plot(t,w);
axis([0 T 0 1.5]);
xlabel('t (sec) -->');
ylabel('w(t)');
title('Time Waveform');

subplot(412);
plot(f(1:pos),abs(W(1:pos)));
xlabel('f (Hz) -->');
ylabel('|W(f)|');
title('Magnitude Spectrum out to 4th Null');

subplot(413);
plot(f(1:pos),180/pi*angle(W(1:pos)));
xlabel('f (Hz) -->');
ylabel('theta(f) (degrees)');
title('Phase Spectrum out to 4th Null');
grid;

subplot(414);
plot(f,abs(W));
xlabel('f (Hz) -->');
ylabel('|W(f)|');
title('Magnitude Spectrum over whole FFT frequency range');




