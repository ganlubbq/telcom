
% File: Example5_11.m    for Example 5-11

clear;
clf

Ts = 1;
% tinc = The number of points every Ts seconds
tinc = 20;
dt = Ts/tinc;
t = 0:dt:16*Ts;
wc = 2*pi*5;
n = 4;

% Generating x(t), a staircase waveform that repeats every 4Ts seconds
x = zeros(length(t),1);
for (i = 1:1:n)
  for (j = 1:1:n)
    x = x + (2*i-5)*(U_STEP(t,(i-1)*Ts+(j-1)*4*Ts) - U_STEP(t,i*Ts+(j-1)*4*Ts));
  end;
end;
x(length(t)) = x(length(t)-1);
x = x(:);

% Generating y(t)
t1 = 0.24*t;
y = zeros(length(t),1);
for (i = 1:1:n);
  y = y + (2*i-5)*(U_STEP(t1,(i-1)*Ts) - U_STEP(t1,i*Ts));
end;

temp1 = cos(wc*t);
temp2 = sin(wc*t);
temp1 = temp1(:);
temp2 = temp2(:);

s = x.*temp1 - y.*temp2;

% Plotting Signal Constillation, x(t) versus y(t)
plot(x,y,'x');
xlabel('x(t)');
ylabel('y(t)');
axis([-4 4 -4 4])
title('Signal Constellation')
figure

fprintf(['\nThere are 2 Figures.  Move Figure 2 off the top of Figure 1. \n\n']);

% Plotting x(t) & y(t)
subplot(311)
plot(t,x);
xlabel('t -->');
ylabel('x(t)');
axis([0 16 -4 4])
title('In-Phase Modulating Signal x(t)')

subplot(312);
plot(t,y);
xlabel('t -->');
ylabel('y(t)');
axis([0 16 -4 4])
title('Quad-Phase Modulating Signal y(t)')

subplot(313);
plot(t,s);
xlabel('t -->');
ylabel('s(t)');
axis([0 16 -4 4])
title('QAM Signal s(t)')




 



