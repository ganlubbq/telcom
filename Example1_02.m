% File: Example1_2.m   for Example 1-2
  
clear;

% Apply Eq (1-8)to a Binary problem.  Therefore m=2 in Eq (1-8)
% Examine how the entropy changes as a function of P1.


i = 0;
for (loop = 0:0.05:1)
  i = i+1;
  P1(i) = loop;
  if P1(i) == 0 | P1(i) == 1
    H(i) = 0;
  else
    H(i) = -1/log(2) * (P1(i)*log(P1(i)) + (1-P1(i))*log(1-P1(i)));
  end;
end;

plot(P1,H);
title('Entropy of Binary Source');
xlabel('Probability P1');
ylabel('H(P1)');




