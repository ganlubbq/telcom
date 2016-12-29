% File: Example3_08.m for Example 3-8 and Fig. 3-14
% Multilevel Signaling

clear;
clf

t = 0:0.05:8;
k = 0:1:3;
Tb = 1;
Ts = 2*Tb;
w = [-3 -1 3 1];
x = -5*Ts:0.05:5*Ts;

% Generating w4(t), sin(x)/x Pulse shape used
w4 = zeros(length(t),1);
for (i = 1:1:length(k))
  w4 = w4 + w(i)*SA(pi/Ts * (t - (k(i)*Ts + 0.5*Ts)));
end;

% Generating w3(t), Rectangular pulse shape used.
w3 = zeros(length(t),1);
for (i = 1:1:length(k))
  temp = t - (k(i)*Ts + 0.5*Ts);
% Finding positions that correspond to -Ts/2 and Ts/2.
  left = INDEX(temp,-Ts/2);
  right = INDEX(temp,Ts/2);
  for (j = left:1:right)
    w3(j) = w(i);
  end;
end;

subplot(211);
plot(t,w3);
xlabel('t in msec -->');
ylabel('w3(t)');
title(['Rectangular Pulse Shape  Tb =',num2str(Tb),' msec ']);
grid;

subplot(212);
plot(t,w4);
xlabel('t in msec -->');
ylabel('w4(t)');
title(['sin(x)/x Pulse Shape  Tb =',num2str(Tb),' msec ']);
grid;


  




