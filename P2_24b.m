% File: P2_24b.m
% Solution for Part (b) only. See P2_24a.m and P2_24c.m for solutions to 
% other parts.

clear;

M = 6;
N = 2^M;
T = 40;
dt = T/N;
n = 0:1:N-1;
tk = n*dt;

% Generating waveform
v = 2 * ones(length(tk),1);

subplot(311)
plot(tk,v);
xlabel('t in sec -->');
ylabel('v(t)');
title('Waveform');
axis([0 40 0 2.5])

% Calculating the MAGNITUDE SPECTRUM using the FFT.
V = dt*fft(v);
fn = n/T;
fs = 1/dt;
pos = INDEX(fn,1);

subplot(312)
plot(fn(1:pos),abs(V(1:pos)),'o');
xlabel('f in Hz -->');
ylabel('|Vn| via FT');
title('Magnitude Spectrum Calculated Using FFT to get FT (See Note)');
axis([0 0.5 0 90])

fprintf('\n');
fprintf('\nSee Window for a plot of the solution for Part(b).\n\n');
fprintf('NOTE: If the FFT is used to give the FT via (2-183), the FFT cannot give the correct \n');
fprintf('weight for a delta function since the delta function has an infinite amplitude.\n');
fprintf('However the AREA under this FT result that approximates the delta function will\n');
fprintf('be the correct weight for the delta function.\n');
fprintf('This is shown in the middle plot (of the Magnitude Spectrum).\n');
fprintf('where the weight of the delta function at f=0 is 80x0.025 = 2.0.\n');
fprintf('\n');
fprintf('The value for the weight of the delta function may be computed directly via\n');
fprintf('the FFT by using (2-187), which calculates the Fourier Series coefficients.\n');
fprintf('The spectrum is then given by (2-109).\n');
fprintf('This is shown in the bottom plot (of the Magnitude Spectrum.)\n');
fprintf('\n');

% Calculating the coefficients of the Fourier Series
V = 1/N*fft(v);

subplot(313)
plot(fn(1:pos),abs(V(1:pos)),'o');
for (i = 1:1:pos)
  line([fn(i) fn(i)], [0 abs(V(i))]);
end;
title('Magnitude Spectrum via FS Coefficients Calculated by FFT (See Note)');
xlabel('f in Hz -->');
ylabel('|Vn| vis FS');
axis([0 0.5 0 3])




