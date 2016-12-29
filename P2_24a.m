% File: P2_24a.m  
% Solution for Part (a) only. See P2_24b.m and P2_24c.m for solutions to 
% other parts. 

clear;

M = 8;
N = 2^M;
T = 40;
dt = T/N;
n = 0:1:N-1;
tk = n*dt -10;

% Generating Pulse waveform
w = U_STEP(tk,1) - U_STEP(tk,5);

% Approximating Fourier Integral using the FFT
W = dt*fft(w);
fn = n/T;
fs = 1/dt;

subplot(211);
plot(tk,w);
title('Time Waveform');
xlabel('tk');
ylabel('w(tk)');

% Plotting response out to 4th Null
pos = INDEX(fn,1);
subplot(212);
plot(fn(1:pos),abs(W(1:pos)));
title('MAGNITUDE SPECTRUM out to 4th Null');
xlabel('fn');
ylabel('Magnitude of W');
fprintf('\nSee Window for a plot of the solution for Part(a).\n');




