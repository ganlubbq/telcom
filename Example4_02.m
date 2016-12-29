% File: Example4_02.m for Example 4-2

clear;
clf

% Set up parameters for the FFT
M = 12;
N = 2^M;
T = 4;
dt = T/N;
n = 0:1:N-1;
tk = n*dt;

% Set up the parameters for the QM waveform
fc = 10;
fa = 1;
Ta = 1;
wc = 2*pi*fc;
wa = 2*pi*fa;

% Generate x and y quadrature modulating functions
t = 0:dt:T;
x = cos(wa*t);
x = x(:);
y = zeros(length(t),1);
y = PULSE(y,t,Ta,2*Ta);

% Generate the modulated signal 
j = sqrt(-1);
g = x + j*y;
carrier = exp(j*wc*t);
g = g(:);
carrier = carrier(:);
v = real(g.*carrier);

% Plot the Modulating Signals
subplot(311);
plot(t,x,t,y,':');
xlabel('t in sec -->');
ylabel( 'x(t) (solid), y(t) (dotted)')
axis([0 4 -1.2 1.2])
title('x(t) and y(t) Modulating Waveforms');

% Plot the QM signal
subplot(312);
plot(t,v);
xlabel('t in sec -->');
ylabel('v(t)');
title('QM Signal');


% Calculate the Spectrum using the FFT
V = dt*fft(v);
fn = n/T;
fs = 1/dt;

% Plot the Magnitude Spectrum of the QM signal
% To plot the spectrum over a range of 0 to 20 Hz, set the 
% parameter in the INDEX function below to a value of 20
pos = INDEX(fn,20);
subplot(313);
plot(fn(1:pos),abs(V(1:pos)));
title('Magnitude Spectrum of the QM Signal');
xlabel('f in Hz -->');
ylabel('|V(f)|');
