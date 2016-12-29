
% File: P2_72.m

clear;

M = 5;
N = 2^M;
n = 0:1:N-1;
T = 1;
dt = T/N;
tk = n*dt;
wo = 2*pi/T;

% Creating Time waveform
v = zeros(length(tk),1);
for (i = 1:1:length(tk))
  if (abs(tk(i)-0.5*T) >= 0.25*T)
    v(i) = 10*cos(wo*tk(i));
  end;
end;

% Creating Fourier Series coefficients from analytical computation
cn = zeros(length(n),1);
for (i = 1:1:length(n))
  cn(i) = 2.5 * (SA((n(i)+1)*pi/2) + SA((n(i)-1)*pi/2));
end;

% Alternately computing the FS using the FFT as given by (3-72).
fn = n/T;
fo = 1/T;
cc = 1/N*fft(v);

PLOT_PR  (3);

% Plotting the Time waveform & the Analytical PSD

plot(tk,v);
xlabel('t in sec -->');
ylabel('v(t)');
title('Time Waveform');
pause;

subplot(211);
plot(fn,abs(cn),'o');
for (i = 1:1:length(n))
  line([fn(i) fn(i)], [0 cn(i)]);
end;
xlabel('f in Hz  -->');
ylabel('|V(f)|');
title('Magnitude Spectrum Via Analytical Calculation');

PSD = cn.*cn;
subplot(212);
plot(fn,PSD,'o');
for (i = 1:1:length(n))
  line([fn(i) fn(i)], [0 PSD(i)]);
end;
xlabel('f in Hz -->');
ylabel('P(f)');
title('PSD Via Analytical Calculation');
pause;

% Comparing Analytical FS coefficients to those generated using the FFT.
pos = N/2+1;
diff = zeros(length(pos),1);
for (i = 1:1:pos)
  diff(i) = abs(cn(i) - cc(i));
end;

clf
plot(n(1:pos),diff, 'x');
for (i = 1:1:pos)
  line([n(i) n(i)], [0 diff(i)]);
end;
xlabel('n');
ylabel('|cn-cc|');
title('Difference between Analytical FS and "FFT" FS coefficients');
subplot(111);

