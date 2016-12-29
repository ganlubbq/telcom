% File: Example3_05.m  for Example 3-5
% This is a plot of Figure 3-9b

clear;
clf
% Using Eq (3-23), we compute the resulting plot for the 1st quadrant.
% Note that the overall characteristic is an odd function of w1. That is
% the plot of the actual character also appears in the 3rd quadrant. 

mu = input('Select a value for mu in the range 0.1 to 500), mu= ');
w1 = 0:0.01:1;
w2 = zeros(length(w1),1);

for (i = 1:1:length(w2))
  w2(i) = log(1 + mu*w1(i))/log(1+mu);
end;

plot(w1,w2);
xlabel('w1');
ylabel('w2(w1)');
grid
title(['mu-law Compressor Characteristic (1st quadrant) for mu=',num2str(mu),' ']);
