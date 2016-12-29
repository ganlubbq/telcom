function d=Q(z)
% FILE: Q.m
% CALL: d = q(z)
% This function returns the value of Q(z) as defined by Eq. (B-56),
% where Eqs. (B-57),(B-58), and the erf(z) function are used.

% z is assumed to be a "scalar" or a vector.

z = z(:);
temp = length(z);
d = zeros(temp,1);

for (i = 1:temp)
  d(i) = 0.5*(1-erf((z(i)/sqrt(2))));
end;


