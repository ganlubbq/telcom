% File: Example3_07.m  for Example 3-7 and Fig. 3-12
% Binary Signaling

clear;

t = 0:0.05:8;
k = 0:1:7;
Tb = 1;
Ts = Tb;
w = [0 1 0 0 1 1 1 0];
x = -5*Ts:0.05:5*Ts;

% Generating w2(t), sin(x)/x Pulse shape used
w2 = zeros(length(t),1);
for (i = 1:1:length(k))
  w2 = w2 + w(i)*SA(pi/Ts * (t - (k(i)*Ts + 0.5*Ts)));
end;

% Generating w1(t), Rectangular pulse shape used.
w1 = zeros(length(t),1);
for (i = 1:1:length(k))
  temp = t - (k(i)*Ts + 0.5*Ts);
% Finding positions that correspond to -Ts/2 and Ts/2.
  left = INDEX(temp,-Ts/2);
  right = INDEX(temp,Ts/2);
  for (j = left:1:right)
    w1(j) = w(i);
  end;
end;

subplot(211);
plot(t,w1);
xlabel('t in msec -->');
ylabel('w1(t)');
axis([0 6 0 1.5])
title(['Rectangular Pulse Shape  Tb =',num2str(Tb),' msec ']);
grid;

subplot(212);
plot(t,w2);
xlabel('t in msec -->');
ylabel('w2(t)');
title(['sin(x)/x Pulse Shape  Tb =',num2str(Tb),' msec ']);
grid;
