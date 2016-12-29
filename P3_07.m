% File: P3_07.m for Problem 3-7

clear;
A = 1;
f1 = 2500;
f2 = 4000;
f = 0:200:5000;

% Creating Magnitude Spectrum of Unsampled signal
W = zeros(length(f),1);
for (i = 1:1:length(f));
  W(i) = A*W1(f(i),f1) -A*W2(f(i),f1,f2);
end;

% Creating Manchester-pulse spectrum;
fn = -50000:200:50000;
j = sqrt(-1);
fs = 10000;
Ts = 1/fs;
H = sin(2*pi*fn*Ts/4);
H = H(:);
H = j*Ts*SA(pi*fn*Ts/2) .* H;

% Creating Flat-topped PAM Spectrum
fprintf('Calculating the Magnitude Spectra -- See the plots.\n');
W1s = zeros(length(fn),1);
for (i = 1:1:length(fn));
  W1s(i) = 0;
  for (n = -5:1:5)
  % Recreating W(f) from above
    Wtemp = A*W1(fn(i)-n*fs,f1) -A*W2(fn(i)-n*fs,f1,f2);
    W1s(i) = W1s(i) + Wtemp;
  end;
end;
W1s = 1/Ts*H.*W1s;

subplot(221)
plot(f,W);
xlabel('f');
title('Magnitude Spectrum of Unsampled Signal');

subplot(222)
plot(fn,abs(H));
xlabel('f');
title('Magnitude Spectrum of Manchester Pulse');

subplot(224)
plot(fn,abs(W1s));
xlabel('f');
title('Magnitude Spectrum of Flat-topped PAM');



