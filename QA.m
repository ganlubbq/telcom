function d=QA(z)
% FILE: QA.m
% CALL: d = QA.m
% This function returns the approximate value of Q(z).

% z is assumed to be a "scalar" or a vector.

p = 0.2316419;
b1 = 0.319381530;
b2 = -0.356563782;
b3 = 1.781477937;
b4 = -1.821255978;
b5 = 1.330274429;
 
z = z(:);
temp = length(z);
d = zeros(temp,1);

for (i = 1:temp)
  t = 1/(1 + p*abs(z(i)));
  d(i) = exp(-z(i)^2/2)/sqrt(2*pi)*(t*b1+t^2*b2+t^3*b3+t^4*b4+t^5*b5);
  if (z(i) < 0)
    d(i) = 1-d(i);
  end;
end;





