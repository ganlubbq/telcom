% File: Example3_01 for Example 3-1

clear;

% Spectrum of Naturally Sampled PAM.
% Assume analog waveform has a rectangular spectrum with
% bandwidth B

B = 5;
fs = 20;
f = -10:1:100;

W = zeros(length(f),1);
W = PULSE(W,f,-B,B);

n = 0:1:6;
% d is the sample pulse width divided by the sampling period.
d = 1/3;
x = pi*n*d;
a = SA(x);

% Generating spectrum of Natural Pulse PAM signal.
Ws = zeros(length(f),1);

% Generating Shifted versions of W due to sampling.
for (i = 1:1:length(n))
  Wtemp = zeros(length(f),1);
  for (j = n(i)*fs+1:1:length(W))
    Wtemp(j) = W(j - n(i)*fs);
  end;
  Ws = Ws + d*a(i)*Wtemp;
end;

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
axis([0 100 0 0.4]);
title(['Magnitude Spectrum of Naturally Sampled PAM Signal for f>0, fs=',num2str(fs)]);
subplot(111);




     



