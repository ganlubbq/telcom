function d=INVQ(z)
% FILE: INVQ.M
% CALL: d = INVQ(z)
% This function returns the value of z, given the value of Q(z) using 
% the inverf(x) command. 

% z is assumed to be a "scalar" or a vector.

z = z(:);
temp = length(z);
d = zeros(temp,1);

for (i = 1:temp)
  d(i) = sqrt(2) * inverf(0.5 - z(i));
end;
end;




