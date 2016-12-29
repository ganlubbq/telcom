  % File: P1_09.m

% For a binary source, (a) Prove that the maximum entropy will occur
% when the probability for sending a binary 1 is equal to the 
% probability for sending a binary 0. (b) Find the maximum entropy.


% SOLUTION
%     Let p=The probability for sending a binary 1, then the probability
%     for sending a binary 0 is (1-p).  From the entropy formula for H(p),
%     we can draw the figure of H(p), and from this figure, we can find
%     the maximum entropy and the value of p that maximizes the entropy.

clear;
fprintf('\n');
fprintf('Calculating the Entropy for a Binary Source\n');

i = 0;
for (loop = 0:0.02:1)
  i = i+1;
  p(i) = loop;
  if p(i) == 0 | p(i) == 1
    H(i) = 0;
  else
    H(i) = -1/log(2) * (p(i)*log(p(i)) + (1-p(i))*log(1-p(i)));
  end;
end;

[Hmax,pmax] = max(H);
pmax = p(pmax);
fprintf('The maximum entropy is H(p) = %G\n',Hmax);
fprintf('Which occurs for a Probability p = %G\n',pmax);

plot(p,H);
title('Entropy of Binary Source');
xlabel('Probability p');
ylabel('H(p)');




