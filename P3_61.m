% File: P3_61.m  for Problem 3-61

clear;
clf

T = 0.05;
t = 0:0.05:3;

% Creating the signals
w1 = 3*sin(2*pi*t);
w1 = w1(:);
w2 = zeros(length(t),1);
w3 = zeros(length(t),1);
for (i = 1:1:length(t))
  if (abs(t(i)-1) <= 1)
    w2(i) = 1;
  end;
  if (abs(t(i)-1) <= 1)
    w3(i) = (abs(t(i)-1) -1);
  end;
end;

% Creating new signal by sampling w1,w2,w3
n = 0:1:62;
tn = n*T;
s = zeros(length(tn),1);
k = 1; 
while (k < length(s)-2)
  s(k) = w1(k);
  k = k+1;
  s(k) = w2(k);
  k = k+1;
  s(k) = w3(k);
  k = k+1;
end;

subplot(321)
plot(t,w1);
xlabel('t sec -->');
ylabel('w1(t)')
axis([0 3 -3 3])
title('Input Waveform  w1(t)');

subplot(323)
plot(t,w2);
xlabel('t sec -->');
ylabel('w2(t)');
axis([0 3 0 1.1])
title('Input Waveform  w2(t)');

subplot(325)
plot(t,w3);
xlabel('t sec -->');
ylabel('w3(t)');
axis([0 3 -1.1 0])
title('Input Waveform  w3(t)');

subplot(322)
stairs(tn,s);
grid;
xlabel('t sec -->');
ylabel('s(t)');
axis([0 3 -3 3])
title('PAM TDM signal waveform, s(t)');







