% File: Example3_10.m for Example 3-10

clear;
clf

R = 1;
Tb = 1/R;
%Tb = 0.25;
%R = 1/Tb;
f = 0:0.01:10;
x =pi*Tb/2*f;
temp1 = SA(x);
temp2 = sin(2*x);
temp2 = temp2(:);

P = Tb*(temp1.*temp1).*(temp2.*temp2);

plot(f,P);
xlabel('f in Hz -->');
ylabel('Bipolar RZ PSD, P(f)');
axis([0 3 0 1])
title(['PSD for a Bipolar RZ Line Code where R=',num2str(R),' bits/sec ']);
grid;




