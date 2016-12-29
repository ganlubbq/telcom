% File: TableA_09.m for Table A-9

clear;

x = 0:0.2:10;
y = SA(x);
y2 = y.*y;

A = [x(:) y(:) y2(:)];

% Saving output to file
% In save command below set the path to the folder 
% where you want TableA_09.txt to be saved

save('M:\Temp-MATLAB-8ED\TableA_09.txt','A','-ascii');

fprintf('\nIn TableA_09.txt');
fprintf('\nThe three columns are x, Sa(x), and Sa^2(x)\n\n');

fprintf('\nThe output data has been written to File: TableA_09.txt\n');

