% File: P4_11.m for Problem 4-11

clear;
clf

R = 400;
L = 1.583e-3;
C = 1e-6;

% Part a
fo = 1/(2*pi*sqrt(L*C));
Q = R*sqrt(C/L);
B = fo/Q;

fprintf('\nfo = %e Hz\n',fo);
fprintf('\nB = %e Hz\n',B);
fprintf('\nQ = %e \n',Q);



% Part b
f = 3500:4:4500;
j = sqrt(-1);
H = zeros(length(f),1);
for (i = 1:1:length(f))
  H(i) = j*2*pi*f(i);
  temp = (j*2*pi*f(i))^2 + (2*pi*fo/Q)*(j*2*pi*f(i)) + (2*pi*fo)^2;
  H(i) = H(i)/temp;
end;

Theta = angle(H)*180/pi;
Td = zeros(length(f),1);
for (i = 1:1:length(f))
  Td(i) = 1/(-2*pi*f(i))*Theta(i);
end;

% Evaluating Tg(f) by hand produces the following equation
Tg = zeros(length(f),1);
for (i = 1:1:length(f))
  temp1 = (Q*(fo/f(i) - f(i)/fo));
  temp1 = 1/(1 + temp1^2);
  Tg(i) = Q/(2*pi)*(fo/f(i)^2 + 1/fo)*temp1;
end;

subplot(221)
plot(f,abs(H));
xlabel('f -->');
ylabel('|H(f)|');
title('Magnitude Spectrum for H(f)');

subplot(223)
plot(f,Theta);
xlabel('f -->');
ylabel('Theta(f)');
title('Phase Spectrum for H(f) in Degrees');

subplot(222)
plot(f,Td);
xlabel('f -->');
ylabel('Td(f)');
title('Carrier Delay of H(f)');

subplot(224)
plot(f,Tg);
xlabel('f -->');
ylabel('Tg(f)');
title('Group Delay of H(f)');



