% File: P2_84.m

clear;

C = 0.1e-6;
R1 = 7500;
R2 = 15000;

f = 10:20:10000;
f3dB = (R1+R2)/(2*pi*R1*R2*C);

j = sqrt(-1);
Hm = R2/(R2+R1);
for (i = 1:1:length(f))
  H(i) = R2/((R1+R2) + j*2*pi*f(i)*R1*R2*C);
end;


subplot(211)
semilogx(f,20*log10(abs(H)/Hm));
xlabel('f in Hz -->');
ylabel('|H(f)| in dB');
grid
title('Transfer Function in dB');

subplot(212)
semilogx(f,angle(H)*180/pi);
xlabel('f in Hz -->');
ylabel('Theta(f) in degrees');
grid
title('PHASE Response in Degrees');

