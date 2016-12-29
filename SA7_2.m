% File: SA7_2.m for Study-aid Example SA7-2

clear;
clf

% Calculate output waveform from a RC low-pass filter
% Filter input is a rectangular pulse of width tdur 

M = 7;
N = 2^M;
n = 0:1:N-1;
tstart = 2;
tend = 3;
tdur = tend - tstart;
T = 10;
dt = T/N;
fs = 1/dt;
t = n*dt;

% Creating time waveform
w = zeros(length(t),1);
for (i = 1:1:length(w))
  if ((t(i) <= tend) & (t(i) >= tstart))
    w(i) = 1;
  end;
end;

% Calculating FFT
W = dt*fft(w);
f = n/T;
% Calculating position of 4th NULL
pos = INDEX(f,4/tdur);

% Calculating filtered waveform
% Beq sets filter equivalent-bandwidth cutoff frequency
%
Beq = 2/tdur;

f3db = (2/pi)*Beq;
Wfil = W;
for (i = 1:1:length(Wfil))
  if (f(i) <= 1/(2*dt))
      Wfil(i) = W(i)*(1/(1+j*f(i)/f3db));
  end;
  if (f(i) > 1/(2*dt))
       Wfil(i) = W(i)*(1/(1+j*(f(i)-1/dt)/f3db));
  end;
end;
wfil = (1/dt)*ifft(Wfil);


subplot(321)
plot(t,w);
axis([0 T 0 1.5]);
xlabel('t (sec) -->');
ylabel('w(t)');
title('Time Waveform');

subplot(323)
plot(t,real(wfil));
axis([0 T -0.5 1.5]);
xlabel('t (sec) -->');
ylabel('wfil(t)');
title('Filtered Time Waveform');

subplot(322);
plot(f(1:pos),abs(Wfil(1:pos)));
xlabel('f (Hz) -->');
ylabel('|Wfil(f)|');
title(['MAGNITUDE SPECTRUM out to 4th Null where Beq = ',num2str(Beq),' Hz']);

subplot(324);
plot(f(1:pos),(180/pi)*angle(Wfil(1:pos)));
xlabel('f (Hz) -->');
ylabel('theta(f) (degrees)');
title('PHASE SPECTRUM out to 4th Null');
grid;

subplot(326);
plot(f,abs(Wfil));
xlabel('f (Hz) -->');
ylabel('|Wfil(f)|');
title(['MAGNITUDE SPECTRUM over whole FFT frequency range where fs = ',num2str(fs),' Hz']);



