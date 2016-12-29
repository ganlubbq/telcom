% File: P4_19.m for Problem 4-19

clear;

B = 100;
f = 10:10:1000;

j = sqrt(-1);
% Creating H1(f) & H2(f)
H1 = zeros(length(f),1);
H2 = zeros(length(f),1);
for (i = 1:1:length(f))
  H1(i) = 1/((1 - (f(i)/B)^2) + j*(sqrt(2)*f(i)/B));
  H2(i) = 1/(1-(f(i)/B)^2+0.765*j*f(i)/B);
  H2(i) = H2(i)*1/(1-(f(i)/B)^2+1.848*j*f(i)/B);
end;

% Creating Phase plots
Theta1 = angle(H1);
Theta2 = angle(H2);
Td1 = zeros(length(f),1);
Td2 = zeros(length(f),1);
for (i = 1:1:length(f))
  if (f(i) >= 100)
    Theta2(i) = Theta2(i) - 2*pi;
  end;
  Td1(i) = -1/(2*pi*f(i))*Theta1(i);
  Td2(i) = -1/(2*pi*f(i))*Theta2(i);
end;

subplot(221)
semilogx(f,abs(H1),f,abs(H2),'--');
xlabel('f -->');
ylabel('|H1(f)| (solid), |H2(f)| (dashed)');
title('Magnitude Response');

subplot(223)
semilogx(f,Theta1*180/pi,f,Theta2*180/pi,'--');
xlabel('f -->');
ylabel('Theta1(f) (solid), Theta1(f) (dashed)');
title('Phase Response in degrees');

subplot(222)
semilogx(f,Td1,f,Td2,'--');
xlabel('f -->');
ylabel('Td1(f) (solid) and Td2(f) (dashed)');
title('Delay Functions');


