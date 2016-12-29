% File Example3_14.m for Example 3-14

clear;
clf

r = input('Enter value of r between 0.01 and 1:');
fo = 1;
B = fo*(1+r);
fl = B*(1-r)/(1+r);
fd = (B-fl)/2;
df = B/50;

% Evaluate and Plot the Frequency Response using Eq (3-69)
f = 0:df:B;
a = zeros(length(f),1);
window = a;
b = a;

window = PULSE(window,f,fl,B);
for (i = 1:1:length(f));
  if (f(i) < fl)
    a(i) = 1;
  end;
  b(i) = 0.5*(1+cos(pi*(f(i)-fl)/(2*fd)));
end;
He = a + b.*window;

subplot(211)
plot(f,He);
xlabel('f');
ylabel('|He(f)|');
axis([0 2 0 1.1])
title(['Frequency Response for r=',num2str(r),'   NOTE: See Figs. 3-25 & 3-26a']);

% Ebaluate and Plot the Impulse Response using Eq (3-73)
fd = B*r/(1+r);
td = 3/(50*fo);
t = 0:td:50*td;

xo = 2*pi*fo*t;
xd = 2*pi*fd*t;

temp1 = SA(xo);
he = zeros(length(t),1);

for (i = 1:1:length(t))
  he(i) = 2*fo*temp1(i)*cos(xd(i))/(1-(4*fd*t(i))^2);
end;

subplot(212)
plot(t,he);
xlabel('t');
ylabel('he(t)');
title(['Impulse Response for r=',num2str(r),'    NOTE: See Fig. 3-26b']);
grid;




