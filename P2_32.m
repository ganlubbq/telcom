% File: P2_32.m

clear;

t = 0:0.05:15;
% Part A
v1 = 0.1*exp(-0.1*t);
v2 = exp(-t);
v3 = 10*exp(-10*t);

subplot(211)
plot(t,v1,'*',t,v2,'--',t,v3,':');
axis([0 2 0 12]);
xlabel('t in sec -->');
ylabel('v(t)');
text(1,8,'a=0.1: Asterisk');
text(1,6,'a=1.0: Dashed Line');
text(1,4,'a=10: Dotted Line');

%Part B
f = 0:0.1:3.5;
j = sqrt(-1);
for (n = 1:length(f))
  V1(n) = 0.1/(1 + j*20*pi*f(n));
  V2(n) = 1/(1 + j*2*pi*f(n));
  V3(n) = 10/(1 + j*0.20*pi*f(n));
end;


subplot(212)
plot(f,abs(V1),'*',f,abs(V2),'--',f,abs(V3),':');
axis([0 3.5 0 12]);
xlabel('f in Hz -->');
ylabel('V(f)');
text(0.2,7,'a=0.1: Asterisk');
text(0.2,5.5,'a=1.0: Dashed Line');
text(0.2,4,'a=10: Dotted Line');


