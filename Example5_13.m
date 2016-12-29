% File: Example5_13.m for Example 5-13

clear;
clf

% Use data shown in Fig. 5-34 and compute Type II MSK results.
                             
d = [1 -1 1 -1 -1 1 1 -1 1 -1];
Ac = 1;
fc = 3;
Tb = 1;
wc = 2*pi*fc;

dt = 1/(5*fc);
t = 0:dt:10*Tb;
nx = 2:2:10;
ny = 1:2:9;

% Generating x(t)
x = zeros(length(t),1);
for (i = 1:1:length(nx))
  temp = Ac * d(nx(i)) * cos(pi*(t - nx(i)*Tb)/2*Tb);
  temp = temp(:);
  x = x + temp .* (U_STEP(t,-Tb+nx(i)*Tb) - U_STEP(t,Tb+nx(i)*Tb));
end;

% Generating y(t)
y = zeros(length(t),1);
for (i = 1:1:length(ny))
  temp = Ac * d(ny(i)) * sin(pi*(t + Tb - ny(i)*Tb)/2*Tb);
  temp = temp(:);
  y = y + temp .* (U_STEP(t,-Tb+ny(i)*Tb) - U_STEP(t,Tb+ny(i)*Tb));
end;

% Generating s(t)
temp = cos(wc*t);
temp1 = sin(wc*t);
temp = temp(:);
temp1 = temp1(:);
s = x.*temp - y.*temp1;

% Generating Plots
subplot(311);
plot(t,x);
xlabel('t -->');
ylabel('x(t)');
title('In-phase Modulation, x(t), for Type II MSK');

subplot(312);
plot(t,y);
xlabel('t -->');
ylabel('y(t)');
title('Quad-phase Modulation, y(t), for Type II MSK');

subplot(313);
plot(t,s);
xlabel('t -->');
ylabel('s(t)');
title('Type II MSK Signal, s(t)');






