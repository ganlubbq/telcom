% File: SA7_4.m for Study-aid Example SA7-4

clear;


t = 0.075;
f1 = 1/(2*pi*t);
B = 15;
fprintf('\nt=%g    ',t)
fprintf('f1=%g    ',f1)
fprintf('B=%g\n',B)
IdB = 30*log10(B/f1)-10*log10(3*((B/f1)-atan(B/f1)));
fprintf('\nIdB=%g dB \n\n',IdB)
