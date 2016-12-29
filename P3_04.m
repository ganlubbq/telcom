% File: P3_04.m for Problems 3-3 and 3-4.

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

% Creating Natural Sampled PAM spectrum % Flat-topped PAM
fprintf('Calculating Magnitude Spectra -- See 3 plots on 1 Figure.\n');
fs = 10000;
tau = 50e-6;
Ts = 1/fs;
d = tau/Ts;
fn = -50000:200:50000;
Ws = zeros(length(fn),1);
W1s = zeros(length(fn),1);
for (i = 1:1:length(fn));
  Ws(i) = 0;
  W1s(i) = 0;
  for (n = -5:1:5)
  % Recreating W(f) from above
    Wtemp = A*W1(fn(i)-n*fs,f1) -A*W2(fn(i)-n*fs,f1,f2);
    Ws(i) = Ws(i) + SA(pi*n*d)*Wtemp;
    W1s(i) = W1s(i) + Wtemp;
  end;
  Ws(i) = d*Ws(i);
end;
W1s = tau/Ts*SA(pi*tau*fn).*W1s;

subplot(221)
plot(f,W);
xlabel('f');
title('Magnitude Spectrum of Unsampled Signal');


subplot(222)
plot(fn,abs(Ws));
xlabel('f');
title('Magnitude Spectrum of Natural Sampled PAM');


subplot(224)
plot(fn,abs(W1s));
xlabel('f');
title('Magnitude Spectrum of Flat-topped PAM');




