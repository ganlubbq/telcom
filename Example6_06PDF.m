function y = Example6_06PDF(f);

% Evaluates the PSD of a bipolar line code where f is frequency 
% using the MATLAB solution for the PSD in Example 6-5.

% A is amplitude of line code
% Rb is the bite rate
% Td is the duration of the rectangular bit pulse

global A Rb Td

Tb = 1/Rb;

R = [A^2/2 -(A^2)/4 0 0 0 0];
x = (pi*Td)*f;
F = Td*SA(x);

% Generating PSD of the Bipolar Line Code using (6-70a)
P = zeros(length(f),1);
for (i = 1:1:length(f))
  P(i) = (abs(F(i)))^2/Tb;
  temp = 0;
  for (k = 2:1:length(R))
    temp = temp + R(k)*cos(4*(k-1)*x(i));
  end;
  P(i) = P(i)*(R(1)+2*temp);
  y(i) = P(i);
end;

