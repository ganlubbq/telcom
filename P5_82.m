% File: P5_82.m for Problem 5-82

clear;
clf

T = 1;

% Creating Data Stream
a = [-1 -1 -1 1 1 1 -1 -1 -1 1 -1 -1 1 -1 -1]';
tt = 0:0.02:15;

% Creating m(tt)
m = MTT(tt,a,T,0);

% Creating x(tt)
x = XTT(tt,a,T,0);

% Creating y(tt)
y = YTT(tt,a,T,0);

% Creating xx(tt), yy(tt) and s(tt)
delay = 0;
xx = zeros(length(tt),1);
for (i = 1:2:length(a))
  temp = a(i)*(U_STEP(tt,(i-1)*T+delay) - U_STEP(tt,(i-1)*T + 2+delay)); 
  xx = xx + temp.*cos(pi*(tt-(i-1)*T-1)/2)';
end;

yy = zeros(length(tt),1);
for (i = 2:2:length(a)-1)
  temp = a(i)*(U_STEP(tt,(i-1)*T+delay) - U_STEP(tt,(i-1)*T + 2+delay)); 
  yy = yy + temp.*sin(pi*(tt-(i-1)*T)/2)';
end;

s = xx.*cos(2*pi*2*tt)' - yy.*sin(2*pi*2*tt)';

subplot(321)
axis([tt(1) tt(length(tt)) -2 2]);
plot(tt,m);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('Input Data Stream Waveform');
grid

subplot(323)
plot(tt,x);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('Data waveform in I-channel');
grid
subplot(325)
plot(tt,y);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('Data waveform in Q-channel');
grid

subplot(322)
plot(tt,xx);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('MSK Type II: I-channel waveform');
grid
subplot(324)
plot(tt,yy);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('MSK Type II: Q-channel waveform');
grid

subplot(326)
plot(tt,s);
xlabel('t in sec -->');
axis([0 15 -1.2 1.2])
title('MSK Type II: signal waveform');
grid



