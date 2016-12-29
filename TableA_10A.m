% File: TableA_10.m for Table A-10

clear
clf

x = 0:0.1:5;
y = Q(x);

fprintf('\nSee Window for a plot of Q(z).');

semilogy(x,y);
xlabel('z -->');
ylabel('Q(z)');
title('Plot of the Q(z) function.  See txt file for the data for Table A-10');
grid;


A = [x(:) y(:)];

% Saving output to file
% In save command below set the path to the folder 
% where you want TableA_09.txt to be saved
save('M:\Temp-MATLAB-8ED\TableA_10.txt','A','-ascii');



fprintf('\n\nThe output data has been written to File: TableA_10.txt\n');

fprintf('The two columns of the txt file are z and Q(z)\n');




