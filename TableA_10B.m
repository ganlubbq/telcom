% File: TableA_10B.m for Appendix A, Section 10

% This file compares the value of Q(z) with the approximate value
% of Q(z) as given by Section 10 of Appendix A

% The approximate value of Q(z) is calculated by using the 
% the function for the approximate value of Q(Z) as defined
% in the file QA.m


clear;


fprintf('\nThe value for Q(z) as evaluated by MATLAB using the erf(z) function\n');
fprintf('is denoted by Q(z) below\n\n');
fprintf('The approximate value for Q(z) as evaluated by the approximation\n');
fprintf('given in A-10 is denoted by QA(z) below.\n\n');


z = input('Enter the desired value of z: ');
y = Q(z);
ya = QA(z);
fprintf('\n\nQ(z) = %e\n',y);
fprintf('\n\nQA(z) = %e\n',ya);
fprintf('\n\nThe difference is = %e\n',abs(ya-y));

