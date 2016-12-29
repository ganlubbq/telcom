function y = U_STEP(t,Tbegin)
% FILE: U_STEP.M
% CALL: y = u_step(t,Tbegin)
% This file creates a unit step for the time vector "t"
% that begins at time t=Tbegin.

n = length(t);
i = 1;
j = 0;

temp = 0;
while(temp == 0)
  if (t(i) >= Tbegin)
    temp = 1;
    j = i;
  else
    i = i+1;
    if (i > n)
      temp = 1;
    end;
  end;
end;

y = zeros(n,1);
if (j > 0)
  for (i = j:1:n)
    y(i) = 1;
  end;
end;




