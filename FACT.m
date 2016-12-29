function y = FACT(N)

% File: FACT.M
% CALL: y = FACT(N)
% This file computes N! (factorial).


y = 1;
while (N > 0)
  y = y*N;
  N = N-1;
end;





