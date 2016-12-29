% File: Example5_07.m      for Example 5-7

clear
clf

fc = 5;
Beta = 0.8;
fm = 1;
Tm = 1/fm;
dt = 2*Tm/200;
wc = 2*pi*fc;
wm = 2*pi*fm;

t = 0:dt:Tm;

m = sin(wm*t);
m = m(:);
theta = Beta*m;

j = sqrt(-1);
g = exp(j*theta);
g = g(:);

carrier = exp(j*wc*t);
carrier = carrier(:);
v = real(g.*carrier);

s = cos(wc*t) - theta'.*sin(wc*t);;
s = s(:);

subplot(411)
plot(t,m);
xlabel('t in sec -->');
ylabel('m(t)');
axis([0 1 -1.2 1.2])
title(['Modulating Signal, fm = ', num2str(fm), ' Hz'])

subplot(412);
plot(t,real(carrier));
xlabel('t in sec -->');
ylabel('v(t)');
axis([0 1 -1.2 1.2])
title(['Carrier Signal, fc = ', num2str(fc), ' Hz'])
grid

subplot(413);
plot(t,v);
xlabel('t in sec -->');
ylabel('v(t)');
axis([0 1 -1.2 1.2])
title(['Exact PM Signal, Beta = ',num2str(Beta), ', fc = ',num2str(fc)]);
grid

subplot(414);
plot(t,s);
xlabel('t in sec -->');
ylabel('s(t)');
axis([0 1 -1.2 1.2])
title(['Narrowband Approximation of PM Signal, Beta = ',num2str(Beta), ', fc = ',num2str(fc)]);
grid




