% File: Table5_2.m for Table 5-2

clear;

fprintf('\nThis file creates a column list of J0(0,Beta) through Jn(n,Beta)');
fprintf('\nfor a specified value of Beta\n\n');

Beta = input('Enter the desired value of Beta: ');
n = input('Enter the desired value of n: ');

n = floor(n);
Jn = zeros(n,1);
m = zeros(n,1);
for (i = 0:1:n)
  Jn(i+1) = besselj(i,Beta);
  m(i+1) = i;
end;

A = [m(:) Jn];

% Saving output to file
% In save command below set the path to the folder 
% where you want Table5_2.txt to be saved
save('M:\Temp-MATLAB-8ED\Table5_2.txt','A','-ascii');

fprintf('\nThe first column lists the values for n.\n');
fprintf('The second column lists the values for Jn(n,Beta) where Beta = %g\n',Beta);
fprintf('\nThe output data has been stored in the file Table5_2.txt\n');
