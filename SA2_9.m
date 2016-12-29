% File: SA2_9.m for Study-aid Example SA2-9

clear;

% Calculate the IFFT for an RC Low-pass Filter

M = 9;
N = 2^M;
n = 0:1:N-1;
fo = 1;
fs = 30;
dt = 1/fs;
T = N*dt;
f = n/T;
t = n*dt;

% Creating Spectrum
for (i = 1:1:(length(f))/2)
   H(i) = 1/(1+j*(f(i)/fo));
end;
for (i=((length(f))/2):1:length(f))
   H(i) = 1/(1+j*((f(i)-fs)/fo));
end;

% Calculating IFFT
h = fs*ifft(H);

subplot(321);
plot(f,abs(H));
xlabel('f (Hz) -->');
ylabel('|H(f)|');
grid;
title('MAGNITUDE SPECTRUM FOR IFFT Input');

subplot(322);
semilogx(f,abs(H));
xlabel('f (Hz) -->');
ylabel('|H(f)|');
grid;
title('MAGNITUDE SPECTRUM FOR IFFT, Semilog Scale ');

subplot(323);
plot(f,180/pi*angle(H));
xlabel('f (Hz) -->');
ylabel('theta(f) (degrees)');
title('PHASE SPECTRUM  FOR IFFT Input');
grid;
subplot(324);
semilogx(f,180/pi*angle(H));
xlabel('f (Hz) -->');
ylabel('theta(f) (degrees)');
title('PHASE SPECTRUM FOR IFFT, Semilog Scale');
grid;

subplot(325);
plot(t,h);
axis([0 2 -1 7]);
xlabel('t (sec) -->');
ylabel('h(t)');
title('Impulse Response (from IFFT Calculation)');
grid;
