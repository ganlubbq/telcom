% File: PB_52.m for Problem B-52

clear;


mx = [2; -1];
Cx = [5 -2/sqrt(5); -2/sqrt(5) 4];
T = [1 1/2; 1/2 1];

% Part a: Compute the mean vector for y
fprintf('\n\n\n(a) The mean vector for y is')
my = T*mx


% Part b: Compute the covariance matrix, Cy
fprintf('\n(b) The covarince matrix for y is')
Cy = T*Cx*T'

% Part c: Compute the correlation coefficient for y1 & y2
fprintf('\n(c) The correlation coefficient for y1 & y2 is')
rho = Cy(1,2)/(sqrt(Cy(1,1)) * sqrt(Cy(2,2)))


