% File: PB_56.m for Problem B-56

clear;
clf

% m is the number of samples of the y vector used for the historgram 
m = 400;

% n is the number of x random variables that are summed to give y
n = 40;

y = zeros(m,1);

% Creating samples of y which is the sum of n uniformly distributed
% random variables x(i). x(i) are the elements of the 
% n-dimensional vector x.
% The MATLAB rand function will be used to give values for x that 
% are uniformly distributed over the interval from 0 to 1.
% Consequently, the mean for x is 1/2 and the variance of x is 1/3.
% Thus, the mean of y, which is the sum of the n uniform RVs,  
% is n/2.
% After some calculation, the variance for y is found to be n/12.

for (i = 1:1:length(y))
  y(i) = sum(rand(n,1));
end;

% Creating the bin vector for the histogram
bins = 0:1:n;
[num,x] = hist(y,bins);

% Normalizing num by the length of y to form the Empirical pdf as
% defined by Eq. (B-15), where, in this case, delx = 1 since the bins
% were selected to have a width of 1 by the statement bins = 0:1:n.
pdf = num/length(y);

% Calculating the empirical mean and variance;
Emean = mean(y);
Evar = cov(y);

% Evaluating Analytical Gaussian pdf
avg = n/2;
var = n/12;
k = 0:0.05:n;
fGauss = zeros(length(k),1);
for (i = 1:1:length(k))
  fGauss(i) = exp(-(k(i)-avg)^2/(2*var));
end;
fGauss = fGauss * 1/sqrt(2*pi*var);

% Plotting the two pdf's for comparison

subplot(211);
plot(x,pdf);
xlabel('y -->')
ylabel('f(y)')
axis([0 n 0 0.3]) 
title('(b) Empirical PDF for y, approximating a Gaussian PDF');

subplot(212);
plot(k,fGauss);
xlabel('y -->')
ylabel('f(y)')
axis([0 n 0 0.3])
title('(b) Theoretical PDF (Gaussian distribution) for y');

fprintf('\n\n\n');
fprintf('Empirical Mean = %f\n',Emean);
fprintf('Theoretical Mean = %f\n',avg);
fprintf('\nEmpirical Variance = %f\n',Evar);
fprintf('Theoretical Variance = %f\n',var);
fprintf('\nNOTE 1: Run this program several times and notice that the\n')
fprintf('Empirical PDF changes slightly from run to run.\n')
fprintf('Also, the values for the Empirical Mean and \n')
fprintf('Empirical Variance change slightly from run to run.\n')
fprintf('but the Empirical values are approximately equal to the\n')
fprintf('the Theorietical values.\n\n')
fprintf('NOTE 2: If m is increased, say to m = 5000, the Empirical PDF\n')
fprintf('gives a much better approcimation to the actual Gaussian PDF.\n')


