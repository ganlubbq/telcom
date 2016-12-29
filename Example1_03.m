% File: Example1_3.m   for Example 1-3
  
clear;

% Apply Eq (1-8)to a 12 digit problem.  
% 

m = 4^12
Pj = 1/(4^12)
Ij = (-1/log(2))*log(Pj)

H = m*Pj*Ij
