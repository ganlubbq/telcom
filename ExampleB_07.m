% File: ExampleB_07.m for Example B-7

clear;
clf

fprintf('\nSee Window for plot.\n\n')

m = input('Enter the desired value of the mean: ');
sigma = input('Enter the desired value of the standard deviation: ');
sigma = abs(sigma);

x = m-5*sigma:10*sigma/1000:m+5*sigma;

cdf = zeros(length(x),1);
cdf = Q((m - x)/sigma);

plot(x,cdf);
xlabel('x');
ylabel('F(x)');
title(['CDF of Guassian RV with specified mean = ',num2str(m),' and standard deviation = ',num2str(sigma)]);
grid;




