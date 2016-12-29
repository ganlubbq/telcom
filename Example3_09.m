% File: Example3_09.m for Example 3-9

clear;
clf

% Evaluate the spectrum for a Bipolar RZ Line Code using the 
% autocorrelation values given by Eq (3-44).

A = 2;
% Note that R(i) corresponds to R{subscript i-1}.  Therefore,
% R(1) is the autocorrelation function evaluated at zero time shift.
% Using the fact that R(-k) = R(k) to simplify evaluation

R = [A^2/2 -(A^2)/4 0 0 0 0];

Rb = 1;
Tb = 1/Rb;
df = 0.05*Rb;
f = 0:df:3*Rb;

x = (pi*Tb/2)*f;
F = 0.5*Tb*SA(x);

% Generating PSD of Given Line Code
P = zeros(length(f),1);
for (i = 1:1:length(f))
  P(i) = (abs(F(i)))^2/Tb;
  temp = 0;
  for (k = 2:1:length(R))
    temp = temp + R(k)*cos(4*(k-1)*x(i));
  end;
  P(i) = P(i)*(R(1)+2*temp);
end;

plot(f,P);
xlabel('f in Hz -->');
ylabel('Bipolar RZ PSD, P(f)');
title(['PSD for a Bipolar RZ Line Code where R=',num2str(Rb),' bits/sec ']);
grid;



