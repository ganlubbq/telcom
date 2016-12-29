% File: SA3_1.m for Study Aid Example SA3-1 

clear;
A = 2;
B = 3000;
f = -5000:200:5000;

% Creating Magnitude Spectrum of Unsampled signal
W = zeros(length(f),1);
for (i = 1:1:length(f));
  W(i) = -A/B*(abs(f(i))-B)*W1(f(i),B);
end;

% Creating Flat-topped PAM spectrum
fprintf('\nCalculating Magnitude Spectrum -- See the plot.\n\n');
fs = 8000;
tau = 100e-6;
Ts = 1/fs;
d = tau/Ts;
fn = -50000:100:50000;
W1s = zeros(length(fn),1);
for (i = 1:1:length(fn));
  W1s(i) = 0;
  for (n = -5:1:5)
  % Recreating W(f) from above
    Wtemp = -A/B*(abs(fn(i)-n*fs)-B)*W1(fn(i)-n*fs,B);
    W1s(i) = W1s(i) + Wtemp;
  end;
end;
W1s = tau/Ts*SA(pi*tau*fn).*W1s;

subplot(211)
plot(f,W);
xlabel('f');
title('Magnitude Spectrum of Unsampled Signal');

subplot(212)
plot(fn,abs(W1s));
xlabel('f');
title('Magnitude Spectrum of Flat-topped PAM');


% Solving Part b
% The first-null bandwidth for the envelope of the
% spectrum is Bn.
Bn = 1/tau;
fprintf('The first-null bandwidth for the envelope of the\n');
fprintf(['magnitude spectrum is  Bn = ',num2str(Bn), ' \n']);




