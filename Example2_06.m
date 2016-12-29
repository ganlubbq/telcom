% File: Example2_06.m   for Example 2-6

clear;

f = -10:0.1:10;
T = 1;
x = pi*T*f+0.001;
W = T*SA(x);

subplot(311);
plot(f,W);
xlabel('f');
ylabel('W(f)');
grid;


B = log(W);
WdB = (20/log(10))*real(B);
Theta = (180/pi)*imag(B);

subplot(312);
plot(f,WdB);
xlabel('f');
ylabel('W(f) in dB');
grid;

subplot(313);
plot(f,Theta);
xlabel('f');
ylabel('Angle of W(f) in degrees');
grid;


