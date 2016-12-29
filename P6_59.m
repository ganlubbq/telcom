% File: P6_59.m for Problem 6-59

clear;
clf

A  = 1;
fc = 1000;
df = 50;

dw = 2*pi*df;
w1 = 2*pi*(fc-df);
w2 = 2*pi*(fc+df);
T  = 1/(4*df);

t = 0:T/100:T;

for (i = 1:1:length(t))
   v1(i)  = (A/2)*(t(i) + sin(2*w1*t(i))/(2*w1));
   v21(i) = (sin((w1+w2)*t(i)))/(w1+w2);
   v22(i) = (sin(2*dw*t(i)))/(2*dw);
   v2(i)  = (A/2)*(v21(i)+v22(i));
   ro(i)  = v1(i) - v2(i);
   vm1(i) = t(i)*cos(w1*(T-t(i)));
   vm2(i) = (sin(w1*(T+t(i)))-sin(w1*(T-t(i))))/(2*w1);
   rmo(i) = ((A^2)/2)*(vm1(i)+vm2(i));
end;

PLOT_PR(2);

subplot(311);
plot(t,v1);
xlabel('t   sec -->');
ylabel('v1(t)'); 
title('(a) I-Channel Integrator Output, v1(t)');

subplot(312);
plot(t,v2);
xlabel('t   sec -->');
ylabel('v2(t)');
title('(a) Q-Channel Integrator Output, v2(t)');

subplot(313);
plot(t,ro);
xlabel('t   sec -->');
ylabel('ro(t)');
title('(a) Fig. P6-51 Output Waveform, v2(t)');

pause; 

subplot(111);
plot(t,rmo);
xlabel('t   sec -->');
ylabel('ro(t)');
title('(b) Matched Filter Output for s1(t) sent');

