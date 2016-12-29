 % File: P4_09.m for Problem 4-9

clear;
clf

A = 1;
T = 1;
w = 2*pi*7;
u = 0:0.01:12;
t = -T:0.02:T;


% Forming the Si(u) function
Si = zeros(length(u),1);
fprintf('\nCalculating result.\n');
for (i = 2:1:length(u))
  fprintf('.');
  Si(i) = Si(i-1) + quadl('SA',u(i-1),u(i));
end;
fprintf('\n');


% Creating v2(t)
v2 = zeros(length(t),1);
for (i = 1:1:length(t))
  temp1 = 2*pi*(2*t(i)/T + 1);
  temp2 = 2*pi*(2*t(i)/T - 1);
  fprintf('.');
  v2(i) = (A/pi)*(quadl('SA',0,temp1) - quadl('SA',0,temp2))*cos(w*t(i));
end;
fprintf('\n');

subplot(211)
plot(u,Si);
xlabel('u -->');
ylabel('Si(u)');
title('Plot of the Si(u) function');


subplot(212)
plot(t,v2);
xlabel('t -->');
ylabel('v2(t)');
title('Output Waveform');

