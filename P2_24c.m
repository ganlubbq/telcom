% File: P2_24c.m
% Solution for Part (c) only. See P2_24a.m and P2_24b.m for solutions to 
% other parts. 

clear;

M = 8;
N = 2^M;
T = 40;
dt = T/N;
n = 0:1:N-1;
tk = n*dt -10;
tk = tk(:);

% Generating waveform
x = zeros(length(tk),1);
x = 0.2 * (tk.*(U_STEP(tk,0)-U_STEP(tk,5))-(tk-10).*(U_step(tk,5)-U_step(tk,10)));
 
% Approximating the Fourier Integral using the FFT
X = dt*fft(x);
fn = n/T;
fs = 1/dt;
pos = index(fn,1);



fprintf('\nSee Window for a plot of the solution for Part(c).\n\n');
subplot(211);
axis([-5 15 0 1.5]);
plot(tk,x);
title('Time Waveform');
xlabel('t in sec -->');
ylabel('x(tk)');
axis;

subplot(212);
plot(fn(1:pos),abs(X(1:pos)));
title('MAGNITUDE SPECTRUM out to 5th Null');
xlabel('f in Hz -->');
ylabel('|Xn|');
subplot(111);




