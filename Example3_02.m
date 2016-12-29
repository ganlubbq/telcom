% File: Example3_03.m  for Example 3-2

clear;

% Spectrum of Flat-top Sampled PAM.
% Assume analog waveform has a rectangular spectrum with
% bandwidth B

B = 5;
fs = 15;
Ts = 1/fs;
f = -10:1:100;

W = zeros(length(f),1);
W = PULSE(W,f,-B,B);

n = 0:1:6;
% d is the sample pulse width divided by the sampling period.
d = 1/3;
tau = d*Ts;
x = pi*tau*f;
H = SA(x);

% Generating spectrum of Flat-top Pulse PAM signal.
Ws = zeros(length(f),1);

% Generating Shifted versions of W due to sampling.
for (i = 1:1:length(n))
  Wtemp = zeros(length(f),1);
  for (j = n(i)*fs+1:1:length(W))
    Wtemp(j) = W(j - n(i)*fs);
  end;
  Ws = Ws + Wtemp;
end;
Ws = Ws.*H*fs;

subplot(211);
plot(f,abs(W));
xlabel('     f (Hz) -->');
ylabel('|W(f)|');
axis([-20 20 0 1.5]);
title('Magnitude Spectrum for the Analog Signal');

subplot(212);
plot(f,abs(Ws));
xlabel('f (Hz) -->');
ylabel('|Ws(f)|');
axis([0 100 0 18]);
title(['Magnitude Spectrum of Flat-top Sampled PAM Signal for f>0, fs=',num2str(fs)]);





     



